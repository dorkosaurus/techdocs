#include <stdio.h>
int main(){
    char buff[] = {'B','b'};
    int array_length = ( sizeof(buff)  )  / ( sizeof(char) );
    for(int i=0;i<array_length;i++){
        putchar(buff[i]);
    }
}    
