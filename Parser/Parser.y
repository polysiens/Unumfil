%{
#include <stdio.h>
enum TokenType {
    IF,
    ELSE,
    INTEGER_LITERAL,
    FLOAT_LITERAL,
    IDENTIFIER,
    OPERATOR
};
extern int yylex();
void yyerror(const char *s);
%}

%token IF ELSE INTEGER_LITERAL FLOAT_LITERAL IDENTIFIER OPERATOR

%%

program:
    statements
    ;

statements:
    statements statement
    | statement
    ;

statement:
    IF expr ELSE expr
    | expr OPERATOR expr
    ;

expr:
    INTEGER_LITERAL
    | FLOAT_LITERAL
    | IDENTIFIER
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}