#include <stdio.h>
#include <stdlib.h>

void update(float * variable,float newVal){
    *variable=newVal;
    return;
}

int main(){
   float x=123.45;
   float *y = &x;
   printf("x=%f\n",x);
   update(y,543.21);
   printf("x=%f\n",x);
   return EXIT_SUCCESS;
}
