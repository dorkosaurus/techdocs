#include <stdio.h>
#include <stdlib.h>
float testfloat(){
    static float ftest = 1.0;
    return ftest++;
}
int main(){
    int test=1;
    register int reg_int=2;
    char * p = "";
    if(1>0){
        int test = 2;
        const char character = 'b';
        printf("test inner block=%d\n",test);
         printf("test inner block=%c\n",character);
        
    }
    printf("test outer block = %d\n",test);
    printf("static var:%f  static var %f\n",testfloat(),testfloat());
    printf("test register= %d\n",reg_int);
    printf("char pointer first character=%d\n",*p); 
}


