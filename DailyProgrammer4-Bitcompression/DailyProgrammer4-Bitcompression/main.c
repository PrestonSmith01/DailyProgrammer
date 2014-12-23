#include <stdio.h>
#include <math.h>
#include <assert.h>

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
    
    for (unsigned char i=0;; ++i) {
        
    }
    

}

int main()
{

    printf("We are using a %s Endian system!\n",isBigEndian() ? "Big" : "Little");
    
    return 0;
}
