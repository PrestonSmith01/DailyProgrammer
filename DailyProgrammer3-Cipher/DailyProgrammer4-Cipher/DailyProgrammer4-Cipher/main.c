//
//  main.c
//  DailyProgrammer4-Cipher
//
//  Created by Preston Smith on 12/20/14.
//  Copyright (c) 2014 Preston Smith. All rights reserved.
//

#include <stdio.h>
#include <ctype.h>
#define MAXSIZE 1024

void usrCryption(char*);
void usrDecrpytion(char*);

int menu();

int main(void)
{
    char unitA, selection[2], unitB[MAXSIZE];
    while(1){
        menu();
        gets(selection);
        
        if((selection[0]=='e')||(selection[0]=='E')){
            gets(unitB);
            usrDecrpytion(unitB);
        }
        else if((selection[0]=='d'||selection[0]=='D')){
            gets(unitB);
            usrDecrpytion(unitB);
        }
        else break;
    }
    return 0;
}
