#include <stdio.h>
#include <stdlib.h>

void printme(char * string);
int main(){
   char stringarr[] = "Hello world!\n";
   char * string = stringarr;
   printme(string);
   *(string+3)='A';
   printme(string);     
}
void printme(char * string){
    printf("%s\n",string);
}
