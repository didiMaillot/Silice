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

#define MAX_ITEMS 4  // Maximum number of items to display in the menu
#define MAX_LEN   20 // Maximum number of letters in the item
const char *items[MAX_ITEMS][MAX_LEN];  // Array of file names (songs)
int item_count = 0;      // Number of items found


void clear_audio()
{
  // wait for a buffer swap (sync)
  int *addr = (int*)(*AUDIO);
  while (addr == (int*)(*AUDIO)) { }
  // go ahead
  for (int b=0 ; b<2 ; ++b) {
    // read directly in hardware buffer
    addr = (int*)(*AUDIO);
    // clear buffer
    memset(addr,0,512);
    // wait for buffer swap
    while (addr == (int*)(*AUDIO)) { }
  }
}

// Function to open and play the selected music file
void openMusic(const char *path_file, const char *file_name) {
  *LEDS = 255;
  f_putchar = display_putchar;
  memset(display_framebuffer(),0x00,128*128);
  display_refresh();
  *LEDS = 1;

  display_set_cursor(0,0);
  display_set_front_back_color(255,0);
  display_refresh();
  *LEDS = 2;

  // Construct the full file path
 
  char path[128];  // Base path
  path[0] = '\0';
  strcat(path, path_file);  // Append the directory path
  strcat(path, "/");  // Add a separator
  strcat(path, file_name);  // Append the file name
  *LEDS = 4;

  printf("file: %s\n", path);
  display_refresh();

// while(1){}

  // Open the selected music file
  FL_FILE *f = fl_fopen(path, "rb");
 // printf("%d\n",f);
  if (f == NULL) {
    // Error: file not found
    printf("file not found: %s\n", path);
    display_refresh();
  *LEDS = 8;
    return;
  } else {
    display_set_front_back_color(0,255);
    printf("music file found: %s\n", path);
    display_refresh();
    display_set_front_back_color(255,0);
    printf("playing ... ");
    display_refresh();
  *LEDS = 16;
  
    int leds = 1;
    int dir = 0;
    
    // Play the entire file
    while (1) {

      int *addr = (int*)(*AUDIO); // Hardware buffer address

      // Read directly into the hardware buffer (512 bytes at a time)
      int sz = fl_fread(addr, 1, 512, f);
      
      // If fewer than 512 bytes were read, it means we reached the end of the file
      if (sz < 512) {
        break; // Break when the file is completely read
      }

      // Wait for buffer swap (wait until the buffer is not used by the hardware)
      while (addr == (int*)(*AUDIO)) {
        // You could add a timeout here in case something goes wrong
      }

      // Light show (optional)
      if (leds == 128 || leds == 1) {
        dir = 1 - dir;
      }
      if (dir) {
        leds = leds << 1;
      } else {
        leds = leds >> 1;
      }
      *LEDS = leds;
    }
    
    // Close the file after playing
    fl_fclose(f);
  }
  *LEDS = 32;

}

void main() {
  // Initialize screen, SD card, and file system
  f_putchar = display_putchar;
  memset(display_framebuffer(),0x00,128*128);
  oled_init();
  oled_fullscreen();
  
  oled_clear(0);
  sdcard_init();
  fl_init();
  
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // Keep trying until successful
  }

  // List files from SD card and load music items
  const char *path = "/Pop";  // Directory where the music is stored
  FL_DIR dirstat;
  if (fl_opendir(path, &dirstat)) {
    struct fs_dir_ent dirent;
    while (fl_readdir(&dirstat, &dirent) == 0) {
      if (!dirent.is_dir) {
        // Save file name as a music item
        memcpy(items[item_count++], dirent.filename, MAX_LEN);
      }
    }
    fl_closedir(&dirstat);
  }

  // If no music files found, show message
  if (item_count == 0) {
    display_set_cursor(0, 0);
    display_set_front_back_color(255, 0);
    printf("No music files found!\n");
    display_refresh();
    while (1);  // Wait indefinitely
  }

  // Song selection menu
  int selected = 0;
  int pulse = 0;

  while (1) {
    display_set_cursor(0, 0);
    // Pulsing header
    display_set_front_back_color((pulse + 127) & 255, pulse);
    pulse += 7;
    printf("    ===== songs =====    \n\n");
    
    // List song items
    for (int i = 0; i < item_count; ++i) {
      if (i == selected) { // Highlight selected item
        display_set_front_back_color(0, 255);
      } else {
        display_set_front_back_color(255, 0);
      }
      printf("%d> %s\n", i, items[i]);
    }
    display_refresh();

    // Read buttons and update selection
    if (*BUTTONS & (1 << 3)) {
      ++selected;
    }
    if (*BUTTONS & (1 << 4)) {
      --selected;
    }
    if (*BUTTONS & (1 << 6)) {
      // When select button is pressed, play the selected song
      openMusic(path, items[selected]);  // Pass both the path and the file name
      *LEDS = 0;
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
