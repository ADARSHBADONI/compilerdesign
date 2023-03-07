%{
#include<stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-9]* printf("valid identifier");
^[^a-zA-Z_] printf("invalid identifier ");
.;
%%
int main()
{
printf("Enter the input string:::");
yylex();
}

