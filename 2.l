%{
#include<stdio.h>
#include<stdlib.h>
int count=0,tcount=0,space=0,rcount=0;
%}

%%
\n count++;
" " space++;
\t tcount++;
[^\t" "\n] rcount++;
.;
%%

int main(void)
{
yyin=fopen("J.txt","r");
yylex();
printf("number of lines are ::: %d\n",count);
printf("number of spaces are ::: %d\n",space);
printf("number of tab chareacter  are ::: %d\n",tcount);
printf("number of rest character are ::: %d\n",rcount);
return 0;
}

int yywrap()
{return 1;}

