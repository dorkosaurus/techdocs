#include <stdio.h>
#include <stdlib.h>
int main(){
    double d_arr[3]={1.234,4.56,7.89};
    int sizeof1 = (int)(  sizeof(3) *  sizeof(double)  );
    int sizeof2 = (int) sizeof d_arr;
    printf("sizeof(#elements)*sizeof(type)=%d\n",sizeof1);
    printf("sizeof(arr_name)=%d\n",sizeof2);
    return EXIT_SUCCESS;
}
