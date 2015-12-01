#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
int add_int(int a,...);
int main(){
    int actual = add_int(6,1,2,3,4,5,6);
    int expected = 9;
    printf("expected: %d, actual %d\n",expected,actual);
    return EXIT_SUCCESS;
}
int add_int(int a,...){
    va_list arglist;
    int i;
    int result=0;
    va_start(arglist,a);
    for(i=0;i<a;i++){
        int tmp = va_arg(arglist,int);
        printf("tmp=%d\n",tmp);
        result+=tmp;
    }
    va_end(arglist);
    return result;
}
