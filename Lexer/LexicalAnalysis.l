%{
#include <stdio.h>
%}

%%

"if"            { printf("IF keyword\n"); }
"else"          { printf("ELSE keyword\n"); }
"while"         { printf("WHILE keyword\n"); }
"return"        { printf("RETURN keyword\n"); }

"+"             { printf("ADD operator\n"); }
"-"             { printf("SUBTRACT operator\n"); }
"*"             { printf("MULTIPLY operator\n"); }
"/"             { printf("DIVIDE operator\n"); }

[0-9]+          { printf("INTEGER literal: %s\n", yytext); }
[0-9]+"."[0-9]* { printf("FLOAT literal: %s\n", yytext); }

[a-zA-Z_][a-zA-Z_0-9]* { printf("IDENTIFIER: %s\n", yytext); }

[ \t\n]+        { /* Skip whitespace */ }

.               { printf("Unknown character: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}