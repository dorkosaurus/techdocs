#include <stdio.h>
int main(){
    int x = 0xEFFF,y = 0x1000;
    printf("x=%x, ~x=%x, y=%x, ~y=%x\n",x,~x,y,~y);
}
