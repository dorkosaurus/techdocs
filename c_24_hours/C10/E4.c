#include <stdio.h>
#include <stdlib.h>
int main(){
    while(1){
        int user_input = getc(stdin);
        switch(user_input){
            case 'q':
                return EXIT_SUCCESS;
            default:
                break;
        }
    }
    return EXIT_SUCCESS;
}
