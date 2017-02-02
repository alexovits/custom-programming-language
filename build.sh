bison -dvt g3.y
flex lexi3.lex
g++ lex.yy.c
g++ lex.yy.c g3.tab.c
./a.out
