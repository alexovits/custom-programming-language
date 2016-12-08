%{
#include <iostream>
using namespace std;
extern int yylex();
int yyerror(const char*);
%}

%token VARIABLE NUMBER FOR IF VAR LOGICAL_EXP COND_OP WHILE
%start programSegment
%left '+' '-'
%left '*' '/'
%%

programSegment: decl ';'
 | exp ';'
 | cond
 | forLoop
 | whileLoop
 | programSegment decl ';'
 | programSegment exp ';'
 | programSegment cond
 | programSegment forLoop
 | programSegment whileLoop
;

cond: IF '(' exp COND_OP exp ')' '{' programSegment '}'
 | IF '(' exp ')' '{' programSegment '}'

forLoop: FOR '(' exp COND_OP exp ')' '{' programSegment '}'

whileLoop: WHILE '(' exp COND_OP exp ')' '{' programSegment '}'
 | WHILE '(' exp ')' '{' programSegment '}'

decl: VAR VARIABLE
;

exp: LOGICAL_EXP
   | NUMBER
   | VARIABLE
   | exp '+' exp
   | exp '-' exp
   | exp '*' exp
   | exp '/' exp
   | '(' exp ')'
;

%%

int main() {
	yyparse();
}

int yyerror(const char* s) {
    cout << s << endl;
}
