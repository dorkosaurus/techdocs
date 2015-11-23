#include <stdio.h>
#include <stdlib.h>
int main(){
    for(int i=0;i<100;i++){
        if(i%2==0){
            if(i%3==0){
                printf("%d is divisible by 2 and 3\n",i);
            }
        }
    }
    return EXIT_SUCCESS;
}
