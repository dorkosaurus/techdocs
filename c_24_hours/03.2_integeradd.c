#include <stdio.h>
int integer_add(int x, int y){

int result;
result = x+y;
return result;
}
int main(){
	int sum;
	sum = integer_add(5,12);
	printf("5+12=%d\n",sum);
}
