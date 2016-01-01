#include <stdio.h>
#include <stdlib.h>
void print1(char ** ptrs,int num);
int main(){
 char *ptr[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
 print1(ptr,7);
 return EXIT_SUCCESS;
}
void print1(char ** ptrs,int num){
    for(int i=0;i<num;i++){
        printf("%s\n",ptrs[i]);
    }
}

