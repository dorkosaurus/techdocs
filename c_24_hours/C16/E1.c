#include <stdio.h>
#include <stdlib.h>

void printme(char * string);
int main(){
   char * string = "Hello world!\n";
   printme(string);     
}
void printme(char * string){
    printf("%s\n",string);
}
