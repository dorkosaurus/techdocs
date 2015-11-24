#include <stdio.h>
#include <stdlib.h>

int main(){
    int x=5,y=6;
    int* ptr = &x;
     printf("x val = %d\n",x);
    *ptr = x*y;
    printf("x new val = %d\n",x);
    return EXIT_SUCCESS;
}
