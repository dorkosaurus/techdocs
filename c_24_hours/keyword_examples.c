# include <stdio.h>

void kw_auto(void){
    auto int dork=1;
    printf("auto applies local scope to local variables and is the default.\n");
}
void kw_break(void){

    int while_index=0;
    while(while_index>=0){
        while_index++;
        if(while_index>=100){
            printf("break applies to while loops\n");
            break;
        }
    }


    int do_while_index=0;
    do{
           if(do_while_index==0){
                printf("break applies to do-while loops\n");
                break;
            }
    
    }
    while(do_while_index>0);


    for(int for_index=0;for_index<1000;for_index++){
        if(for_index==100){
            printf("break applies to for loops\n");
            break;
        }
    }

    int switch_expr=10;
    switch(switch_expr){
        case 10:
            printf("break applies to switch statements\n");
            break;
     }    
}
void kw_const(void){
    const int immutable_int = 4;
    immutable_int=5;
    

}



int main(void){
    kw_auto();
    kw_break();
    kw_const();
}
