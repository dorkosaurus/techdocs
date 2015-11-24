#include <stdio.h>
#include <stdlib.h>

void update(int * variable,int newVal){
    *variable=newVal;
    return;
}

int main(){
   int x = 'A';
    printf("x=%d, %c\n",x,x);
   update(&x,66);
     printf("x=%d, %c\n",x,x);
   return EXIT_SUCCESS;
}
