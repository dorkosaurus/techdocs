#include <stdio.h>
#include <stdlib.h>

int main(){
    char arr_ch[]={
        'I',' ',
        'l','i','k','e',' ',
        'C','\0'};
    int num_elems = sizeof(arr_ch);
    for(int i=0;i<num_elems;i++){
        printf("%c",arr_ch[i]);
    }
    printf("\n");
    return EXIT_SUCCESS;
}
