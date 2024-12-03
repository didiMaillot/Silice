// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"


// Include the fat32 library
#include "fat_io_lib/src/fat_filelib.h"

#define MAX_ITEMS 30  // Maximum number of items to display in the menu
#define MAX_LEN 10  // Maximum number of letter in the item
const char *items[MAX_ITEMS][MAX_LEN];  // Array of file names (songs)
int item_count = 0;      // Number of items found

void main() {
  // Turn LEDs off
  *LEDS = 0;
  // Install putchar handler for printf
  f_putchar = display_putchar;
  // Init screen
  oled_init();
  oled_fullscreen();
  oled_clear(0);

  // Init SD card
  sdcard_init();
  // Initialize File IO Library
  fl_init();
  // Attach media access functions to library
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // Keep trying until successful
  }

  // Header for SD card files


  // List files from SD card and load music items
  const char *path = "/";
  FL_DIR dirstat;
  if (fl_opendir(path, &dirstat)) {
    struct fs_dir_ent dirent;
    while (fl_readdir(&dirstat, &dirent) == 0) {
      if (!dirent.is_dir) {


          if (item_count < MAX_ITEMS) {
            // Save file name as a music item
           memcpy(items[item_count++] , dirent.filename, MAX_ITEMS) ;
          }
      
      }
    }
    fl_closedir(&dirstat);
  }

  // If no music files found, show message
  if (item_count == 0) {
    display_set_cursor(0,0);
    display_set_front_back_color(255,0);
    printf("No music files found!\n");
    display_refresh();
    while (1);  // Wait indefinitely
  }

  // Song selection menu
  int selected = 0;
  int pulse = 0;

  // Enter menu loop
  while (1) {
    display_set_cursor(0,0);
    // Pulsing header
    display_set_front_back_color((pulse+127)&255, pulse);
    pulse += 7;
    printf("    ===== songs =====    \n\n");
    
    // List song items
    for (int i = 0; i < item_count; ++i) {
      if (i == selected) { // Highlight selected item
        display_set_front_back_color(0,255);
      } else {
        display_set_front_back_color(255,0);
      }
      printf("%d> %s\n", i, items[i]);
    }
    display_refresh();

    // Read buttons and update selection
    if (*BUTTONS & (1<<3)) {
      ++selected;
    }
    if (*BUTTONS & (1<<4)) {
      --selected;
    }

    // Wrap around the selection
    if (selected < 0) {
      selected = item_count - 1;
    }
    if (selected >= item_count) {
      selected = 0;
    }
  }
}
