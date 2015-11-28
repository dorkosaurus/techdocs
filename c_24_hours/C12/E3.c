#include <stdio.h>
#include <stdlib.h>

int main(){
    char arr_ch[][2]={
        '1','a',
        '2','b',
        '3','c',
        '4','d',
        '5','e',
        '6','f'
    };
    int total_bytes = sizeof(arr_ch)*sizeof(char);
    printf("total bytes = %d\n",total_bytes);

    for(int row=0;row<6;row++){
        for(int col=0;col<2;col++){
            printf("row[%d]col[%d]=%c\n",row,col,arr_ch[row][col]);
        }
    }
        
    return EXIT_SUCCESS;
}
