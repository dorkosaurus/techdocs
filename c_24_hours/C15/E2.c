#include <stdio.h>
#include <stdlib.h>
int multi_two(int one, int two);

int main(){
    printf("%d * %d = %d\n",5,4,multi_two(5,4));
    return EXIT_SUCCESS;
}
int multi_two(int one, int two){
    return one*two;
}
