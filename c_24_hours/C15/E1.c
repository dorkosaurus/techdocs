#include <stdio.h>
#include <stdlib.h>
#include <time.h>
void get_date_time(void);

int main(){
    get_date_time();
    return EXIT_SUCCESS;
}
void get_date_time(){
    time_t now;
    char * nowstr = asctime(localtime(&now));
    printf("local time is ");
    for(;*nowstr!='\0';){
        printf("%c",*nowstr++);
    }
}
