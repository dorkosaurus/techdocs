#include <stdio.h>
#include <stdlib.h>
int main(){
    for(int i=0;i<100;i++){
        int remainder = i%6;
        if(remainder==0){
            printf("%d is divisible by 6\n",i);
        }
    }
    return EXIT_SUCCESS;
}
