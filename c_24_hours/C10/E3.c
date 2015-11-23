#include <stdio.h>
#include <stdlib.h>
int main(){
    while(1){
        int user_input = getc(stdin);
        switch(user_input){
            case 'A':
                printf("%d\n",user_input);
                break;
            case 'B':
                printf("%d\n",user_input);
                break;
            case 'C':
                printf("%d\n",user_input);
                break;
            case 'Q':
                return EXIT_SUCCESS;
            case 'q':
                return EXIT_SUCCESS;
            default:
                break;
        }
    }
    return EXIT_SUCCESS;
}
