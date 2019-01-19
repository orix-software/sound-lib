#include "../src/include/soundLib.h"
#include <stdio.h>
#include <conio.h>


int main () {
    unsigned char key;
    clrscr();
    puts("1=sound_helicopter1");
    puts("2=sound_helicopter2");
    puts("3=sound_helicopter2");
    key=cgetc();
    switch(key) {
        case '1':
            sound_helicopter1();
            break;
        case '2':
            sound_helicopter2();
        case '3':
            sound_helicopter3();
            break;            
        case '4':
            sound_car_engine();
            break; 
        case '5':
            sound_electricity();
            break;
        case '6':
            sound_pong();
            break;            
        case '7':
            sound_pchh();
            break;                   
        case '8':
            sound_cockpit();
            break;                   
        case '9':
            sound_plane1();
            break;                      
        default:
            clrscr();            
    }

}    
