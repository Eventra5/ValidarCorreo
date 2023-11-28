%{
#include <stdio.h>
%}

%%
[A-Za-z][a-zA-Z0-9._-]+@(hotmail\.com|gmail\.com|uas\.edu\.mx|xyz\.[A-Za-z]+\.mx)  { printf("Cadena válida: %s\n", yytext); }
.  { printf("Cadena no válida: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}