#include <stdio.h>
#include <stdlib.h>
void printme(char * str, int num_rows,int num_cols);
int main(){
    int num_rows=2;
    int num_cols=15;
    char str[2][15]={"You know what,","C is powerful.\n"};
    printme(&str[0][0],num_rows,num_cols);
    return EXIT_SUCCESS;
}
void printme(char * str,int num_rows, int num_cols){
    int num_elems = num_rows*num_cols;
    for(int index=0;index<num_elems;index++){
        printf("%c",*(str+index));
    }
}
