%{
#include <stdio.h>
#include "parser.tab.h"  // Include Bison-generated header

enum TokenType {
    IF,
    ELSE,
    INTEGER_LITERAL,
    FLOAT_LITERAL,
    IDENTIFIER,
    OPERATOR
};
%}

%option noyywrap

%%

"if"                        { return IF; }
"else"                      { return ELSE; }
[0-9]+                      { return INTEGER_LITERAL; }
[0-9]+\.[0-9]*              { return FLOAT_LITERAL; }
[a-zA-Z_][a-zA-Z_0-9]*      { return IDENTIFIER; }
"=="|"!="|">"|"<"|">="|"<=" { return OPERATOR; }
[ \t\n]+                    { /* skip whitespace */ }
.                           { /* unknown character, do nothing */ }

%%

int main() {
    int token;
    while ((token = yylex()) != 0) {
        switch (token) {
            case IF: printf("IF keyword\n"); break;
            case ELSE: printf("ELSE keyword\n"); break;
            case INTEGER_LITERAL: printf("INTEGER literal\n"); break;
            case FLOAT_LITERAL: printf("FLOAT literal\n"); break;
            case IDENTIFIER: printf("IDENTIFIER\n"); break;
            case OPERATOR: printf("OPERATOR\n"); break;
            default: printf("Unknown token\n"); break;
        }
    }
    return 0;
}