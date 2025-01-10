// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"
#include <string.h>
#define MAX_FILENAMES 10
#define MAX_FILENAME_SIZE 32

// include the fat32 library
#include "fat_io_lib/src/fat_filelib.h"

char item[MAX_FILENAMES][MAX_FILENAME_SIZE];
char path_history[50];
char path[MAX_FILENAME_SIZE];
int is_music[MAX_FILENAMES];


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


void selectImage(const char *path_file){

    if( strncmp(path_file, "/Rock", 4) == 0){
       
        display_refresh();
        openImage("ro.data");
   

    }   if( strncmp(path_file, "/Classic", 7) == 0){
       
        display_refresh();
        openImage("cc.data");
      

    }  if( strncmp(path_file, "/Pop", 3) == 0){
       
        display_refresh();
        openImage("p.data");
      

    }   if( strncmp(path_file, "/Electronic", 10) == 0){
       
        display_refresh();
        openImage("e.data");
      
    }
    


}
void openImage(const char *file_name){
    memset(display_framebuffer(),0x00,128*128);
    char path[MAX_FILENAME_SIZE];
    path[0] = '\0';
    strcat(path, "/Img/");
    const char *end = strcat(path, file_name);  // Append the file name
    if (end - path > 64) {
        *LEDS = 15;
        printf("ERROR path too large\n");
        display_refresh();
        while (1) {}
  }
    FL_FILE *f = fl_fopen(path,"rb");
    if (f == NULL) {
        printf("img.raw not found.\n");
        display_refresh();
    } else {
        //printf("image found.\n");
        display_refresh();
        // read pixels in framebuffer
        fl_fread(display_framebuffer(),1,128*128,f);
        // refresh display to show the image
        display_refresh();
        // close
        fl_fclose(f);
    } 
}

void openJingle(){

FL_FILE *f = fl_fopen("/Img/gc.raw","rb");
  if (f == NULL) {
    // error, no file
    printf("file not found.\n");
    display_refresh();
  } else {
    
     display_set_front_back_color(255,0);
        printf("   WELCOME ! ! !    \n\n");
        display_refresh();
    int leds = 1;
    int dir  = 0;
    // plays the entire file
    while (1) { 
      // read directly in hardware buffer
      int *addr = (int*)(*AUDIO);
      // (use 512 bytes reads to avoid extra copies inside fat_io_lib)
      int sz = fl_fread(addr,1,512,f);
      if (sz < 512) break; // reached end of file
      // wait for buffer swap
      while (addr == (int*)(*AUDIO)) { }
      // light show!
      if (leds == 128 || leds == 1) { dir = 1-dir; }
      if (dir) {
        leds = leds << 1;
      } else {
        leds = leds >> 1;
      }
      *LEDS = leds;
    }
    // close
    fl_fclose(f);

  }
}

void openBruitage(){

FL_FILE *f = fl_fopen("/Img/bib.raw","rb");
  if (f == NULL) {
    // error, no file
    printf("file not found.\n");
    display_refresh();
  } else {
    int leds = 1;
    int dir  = 0;
    // plays the entire file
    while (1) { 
      // read directly in hardware buffer
      int *addr = (int*)(*AUDIO);
      // (use 512 bytes reads to avoid extra copies inside fat_io_lib)
      int sz = fl_fread(addr,1,512,f);
      if (sz < 512) break; // reached end of file
      // wait for buffer swap
      while (addr == (int*)(*AUDIO)) { }
   
    }
    // close
    fl_fclose(f);

  }
}
void openMusic(const char *path_file, const char *file_name) {
  *LEDS = 255;
  memset(display_framebuffer(), 0x00, 128 * 128);
  display_refresh();
  *LEDS = 1;

  display_set_cursor(0, 0);
  display_set_front_back_color(255, 0);
  display_refresh();
  *LEDS = 2;

  // Construct the full file path
  char path[MAX_FILENAME_SIZE];  // Base path
  path[0] = '\0';
  strcat(path, path_file);  // Append the directory path
  strcat(path, "/");  // Add a separator
  const char *end = strcat(path, file_name);  // Append the file name
  if (end - path > 64) {
    *LEDS = 15;
    printf("ERROR path too large\n");
    display_refresh();
    while (1) {}
  }
  *LEDS = 4;

  display_refresh();
  selectImage(path_file);  // Display the image as background

  // Open the selected music file
  FL_FILE *f = fl_fopen(path, "rb");
  if (f == NULL) {
    // Error: file not found
    printf("not found: %s\n", path);
    display_refresh();
    *LEDS = 8;
    return;
  } else {
    *LEDS = 16;

    int leds = 1;
    int dir = 0;

    // State variable for play/pause
    int is_playing = 1;  // Initially playing

    // Display "playing" initially
    display_set_cursor(0, 10);  // Position for status
    display_set_front_back_color(255, 0);
    printf("Playing...     ");
    display_refresh();

    // Play the entire file
    while (1) {
      int *addr = (int *)(*AUDIO); // Hardware buffer address

      // If music is playing, read directly into the hardware buffer (512 bytes at a time)
      if (is_playing) {
        int sz = fl_fread(addr, 1, 512, f);

        // If fewer than 512 bytes were read, it means we reached the end of the file
        if (sz < 512) {
          memset(display_framebuffer(), 0x00, 128 * 128);
          break; // Break when the file is completely read
        }

        // Wait for buffer swap (wait until the buffer is not used by the hardware)
        while (addr == (int *)(*AUDIO)) {
          // You could add a timeout here in case something goes wrong
        }
      }

      // Handle play/pause button (button 6)
      if (*BUTTONS & (1 << 6)) {
        clear_audio();
        while (*BUTTONS & (1 << 6)) {
          // Wait for the button to be released to avoid multiple toggles with a single press
        }

        // Toggle play/pause state
        is_playing = !is_playing;

        // Update display based on the current state
        display_set_cursor(0, 10);  // Position for status
        if (is_playing) {
          display_set_front_back_color(255, 0);  // Playing
          printf("Playing...     ");
        } else {
          display_set_front_back_color(255, 0);  // Paused
          printf("Paused...      ");
        }
        display_refresh();  // Refresh display to show updated status
      }

      // Handle stop button (button 5)
      if (*BUTTONS & (1 << 5)) {
        clear_audio();

        memset(display_framebuffer(), 0x00, 128 * 128);  // Clear screen (optional)
        break;  // Stop playback
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



void main()
{
  // turn LEDs off
  *LEDS = 0;
  // install putchar handler for printf
  f_putchar = display_putchar;
  // init screen
  oled_init();
  oled_fullscreen();
  oled_clear(0);
  int selected = 0;
  int pulse = 0;
  int n_items = 0;
  memcpy(path, "/", MAX_FILENAME_SIZE);
  // init sdcard
  sdcard_init();
  // initialise File IO Library
  fl_init();
  // attach media access functions to library
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // keep trying, we need this
  }
  
    memset(display_framebuffer(),0x00,128*128);
    display_refresh();
    display_set_cursor(0,0);
    display_set_front_back_color(0,255);
    openJingle();
  while(1) {
   

    memset(display_framebuffer(),0x00,128*128);
    display_refresh();
    display_set_cursor(0,0);
    display_set_front_back_color(0,255);
    display_refresh();
    display_set_front_back_color(255,0);
    // list files (see fl_listdirectory if at_io_lib/src/fat_filelib.c)
    FL_DIR dirstat;
    // FL_LOCK(&_fs);
    if (fl_opendir(path, &dirstat)) {
        struct fs_dir_ent dirent;
        while (fl_readdir(&dirstat, &dirent) == 0) {
                // print file name
                //printf("%s [%d bytes]\n", dirent.filename, dirent.size);
                memcpy(item[n_items], dirent.filename, MAX_FILENAME_SIZE);
                is_music[n_items] = dirent.is_dir ? 0: 1;
                n_items++;
        }
        fl_closedir(&dirstat);
    }
    // FL_UNLOCK(&_fs);
    

    while (1) {

        display_set_cursor(0,0);
        // pulsing header
        display_set_front_back_color((pulse+127)&255,pulse);
        pulse += 7;
        printf("    ===== Songs =====    \n\n");
        // list items
        for (int i = 0; i < n_items; ++i) {
        if (i == selected) { // highlight selected
            display_set_front_back_color(0,255);
        } else {
            display_set_front_back_color(255,0);
        }
        printf("%d> %s\n",i,item[i]);
        }
        display_refresh();

        // read buttons and update selection
        if (*BUTTONS & (1<<3)) {
            -- selected;
            openBruitage();
        }
        if (*BUTTONS & (1<<4)) {
            ++ selected;
            openBruitage();
        }
        if (*BUTTONS & (1<<5)) {
            strcpy(path, path_history);
            n_items = 0;
            openBruitage();
            break;
        }
        if (*BUTTONS & (1<<6)) {
            if(is_music[selected]) {
              openBruitage();
                openMusic(path, item[selected]);
            }
            else {
              openBruitage();

         
                memcpy(path_history, path, MAX_FILENAME_SIZE);
                strcat(path, item[selected]);
                n_items = 0;
                break;
            }
        }
        // wrap around
        if (selected < 0) {
            selected = n_items - 1;
        }
        if (selected >= n_items) {
            selected = 0;
        }

    }
  }

}