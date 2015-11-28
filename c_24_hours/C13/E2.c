#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(){
 char * str1 = "This is Exercise 1.";
 size_t len = strlen(str1);

 printf("string len: %zu \n",len);

 int index=0;
 for( ; *str1 ; index++){
    char dork = *str1++;
 }
 printf("# chars:%d\n",index);  
}

