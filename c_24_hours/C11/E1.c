#include <stdio.h>
#include <stdlib.h>

void print(int * variable){
    printf("variable address:%p variable value: %d\n",variable,*variable);
    return;
}

int main(){
   int x = 512, y = 1024, z = 2048;  
    print(&x);
    print(&y);
    print(&z);
   return EXIT_SUCCESS;
}
