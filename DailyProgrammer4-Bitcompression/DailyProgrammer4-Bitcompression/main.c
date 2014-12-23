//
//  main.c
//  DailyProgrammer4-Bitcompression
//
//  Created by Preston Smith on 12/22/14.
//  Copyright (c) 2014 Preston Smith. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include <assert.h>

//http://www.reddit.com/r/dailyprogrammer/comments/2b21mp/7182014_challenge_171_hard_intergalatic_bitstream/
// 0-9 = '0'-'9'
// 10-36 = 'A'-'Z'
// 37 = '\0'

#define true 1
#define false 0

typedef unsigned char byte;
typedef unsigned char bool;


bool isBigEndian() {
    unsigned short x = 0xFFFF0000;
    return (unsigned char)x == 0xFFFF;
}

inline bool isLittleEndian() { return !isBigEndian(); }

const byte * encode(const char *str) {
    byte *data = (byte *)malloc(sizeof(byte) * (int)(((double)3/4) * (strlen(str) + 1)));
    
    for(unsigned char i=0; i<strlen(str); ++i) {
        
    }
    
    return data;
}
const char * decode(const byte *data) {
    //char *str = (str *)malloc(sizeof(char) * (int)(((double)4/3) * (strlen(str) + 1)));
    
    for (unsigned char i=0;; ++i) {
        
    }
    
    //return str;
}

int main()
{
    //encode("Hello World! Co"); //16 bytes = 12 bytes (compressed)
    printf("We are using a %s Endian system!\n",isBigEndian() ? "Big" : "Little");
    
    return 0;
}
