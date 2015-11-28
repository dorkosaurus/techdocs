#include <stdio.h>
#include <stdlib.h>
int main(){
    char str[90];
    int i=0;
    int delt= 'a'-'A';
    gets(str);

    while(str[i]){        
        if(  ( str[i]>='A' ) && (str[i]<='Z')  ){
            str[i]+=delt;
        }
        
        i++;
    }
    puts(str);
    return EXIT_SUCCESS;
}         
