%{
#include<stdio.h>
%}
%%
auto|double|int|signed|unsigned|else|long|switch|break|if|for|void|return|continue|while printf("keywords %s",yytext);
[{};,()] printf("\nseperator\n");
[+-/=*%] printf("\noperator\n");
([a-zA-Z][0-9])+|[a-zA-Z]|[0-9] printf("\nidentifier\n");
.|\n; printf("  ");
%%
int yywrap(){
return 1;
}
int main(){
yylex();
return 0;
}
