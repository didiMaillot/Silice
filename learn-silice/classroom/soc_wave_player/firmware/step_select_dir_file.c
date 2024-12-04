#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"
#define MAX_FILENAMES 32
#define MAX_FILENAME_SIZE 128

// Include the fat32 library
#include "fat_io_lib/src/fat_filelib.h"

char item[MAX_FILENAMES][MAX_FILENAME_SIZE];
char *path = "/";
char path_history[10][MAX_FILENAME_SIZE];  // Stack for directory history
int path_index = 0;  // Keeps track of the current directory in history

void main()
{
    // Turn LEDs off
    *LEDS = 0;
    // Install putchar handler for printf
    f_putchar = display_putchar;
    // Init screen
    oled_init();
    oled_fullscreen();
    oled_clear(0);
    int selected = 0;
    int pulse = 0;
    int n_items = 0;
    // Init sdcard
    sdcard_init();
    // Initialise File IO Library
    fl_init();
    // Attach media access functions to library
    while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
        // Keep trying, we need this
    }

    while(1) {
        // Header
        display_set_cursor(0,0);
        display_set_front_back_color(0,255);
        printf("    ===== Albums =====    \n\n");
        display_refresh();
        display_set_front_back_color(255,0);
        
        // List files (directories and files)
        FL_DIR dirstat;
        n_items = 0;  // Reset the file count
        if (fl_opendir(path, &dirstat)) {
            struct fs_dir_ent dirent;
            while (fl_readdir(&dirstat, &dirent) == 0) {
                // Check if it's a directory or a file
                if (dirent.is_dir) {
                    memcpy(item[n_items++], dirent.filename, MAX_FILENAME_SIZE);
                }
            }
            fl_closedir(&dirstat);
        }
        display_refresh();

        while (1) {
            display_set_cursor(0,0);
            // Pulsing header
            display_set_front_back_color((pulse+127)&255,pulse);
            pulse += 7;
            printf("    ===== Directories =====    \n\n");

            // List items (directories)
            for (int i = 0; i < n_items; ++i) {
                if (i == selected) { // Highlight selected
                    display_set_front_back_color(0,255);
                } else {
                    display_set_front_back_color(255,0);
                }
                printf("%d> %s\n", i, item[i]);
            }
            display_refresh();

            // Read buttons and update selection
            if (*BUTTONS & (1<<3)) {
                --selected;
            }
            if (*BUTTONS & (1<<4)) {
                ++selected;
            }
            if (*BUTTONS & (1<<6)) {  // Enter directory (button 6)
                strcat(path, item[selected]);  // Go into the selected directory
                strcpy(path_history[path_index++], path);  // Save the current path
                break;  // Break the loop and go back to the outer loop to list files in the new directory
            }
            if (*BUTTONS & (1<<5)) {  // Back to previous directory (button 5)
                if (path_index > 0) {
                    path_index--;  // Go back to the previous directory in history
                    strcpy(path, path_history[path_index]);
                }
                break;  // Break the loop and go back to the outer loop to list files in the previous directory
            }

            // Wrap around for selection
            if (selected < 0) {
                selected = n_items - 1;
            }
            if (selected >= n_items) {
                selected = 0;
            }
        }
    }
}
