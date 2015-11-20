#include <stdio.h>
int main(){
    int x=1;
    int y=3;    
    x *= y;
    printf("%d\n",x);
    
    x=1;
    y=3;
    x *= -y;
    printf("%d\n",x);
}
