#include <stdio.h>
#include <stdlib.h>
int add(int one,int two);
int main(){
    int (*ptr)(int one, int two);
    int one=1;
    int two=4;
    ptr=add;
    printf("1+4=%d\n",(*ptr)(one,two));
    return EXIT_SUCCESS;
}
int add(int one, int two){
    return one+two;
}
