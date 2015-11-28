#include <stdio.h>
#include <stdlib.h>

int main(){
    char arr_ch[5] = {'A','B','C','D','E'};
    for( int i=0; i<5; i++ ){
        printf("%c", arr_ch[i] );
    }
    return EXIT_SUCCESS;
}
