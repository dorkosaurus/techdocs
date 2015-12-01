#include <stdio.h>
#include <stdlib.h>
int x=1;
int y=2;
void function_1(int x,int y){
    printf("x=%d y=%d\n",x,y);
}
int main(){
    int x = 9;
    function_1(x,y);
    {
       int y = 99;
       function_1(x,y);
    }
    return EXIT_SUCCESS;
}
