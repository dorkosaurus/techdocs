#include <stdio.h>
#include <stdlib.h>
int main(){
    signed int x = 0x8765;
    unsigned int y = 0x8765;
    unsigned char answer = (x==y)?'T':'F';
    printf("x==y?  %c \n",answer);
    return EXIT_SUCCESS;
}
