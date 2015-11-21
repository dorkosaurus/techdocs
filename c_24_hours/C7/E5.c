#include <stdio.h>
int main(){
    int i=1;
    while(i<3){
        printf("start %d iteration of outer loop\n",i);
        int j=0;
        do{
            printf("\tbegin %d iteration of inner loop\n",j);
            j++;
        }while(j<4);
        i++;
    }
}
