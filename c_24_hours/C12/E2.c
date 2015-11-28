#include <stdio.h>
#include <stdlib.h>

int main(){
    int num_elems=5;
    char arr_ch[num_elems];
    int start = 97;
    for(int i=0; i<num_elems++; i++, start++ ){
        arr_ch[i]=start;
    }
    for( int i=0; i<5; i++ ){
        printf("%c", arr_ch[i] );
    }
    printf("\n");
    return EXIT_SUCCESS;
}
