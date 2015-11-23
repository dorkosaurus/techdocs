#include <stdio.h>
#include <stdlib.h>
int main(){
    int sum=0;
    for(int i=0;i<8;i++){
        int remainder = i%6;
        if(remainder==0){  
            continue;
        }
        sum+=i;
    }
    printf("sum of all numbers not divisible by 2 and 3=%d\n",sum);
    return EXIT_SUCCESS;
}
