-- Il linguaggio delle espressioni aritmetiche nella forma usata nelle scuole medie, ossia
--     - numeri interi,
--     - 4 operazioni aritmetiche,
--     - le tre forme di parantesi: tonde, quadre, graffe. 
-- L’analizzatore deve controllare che le parentesi siano inserite secondo le usuali regole: parentesi tonde più interne, 
-- seguite dalle quadre, e poi graffe. L’analizzatore deve inoltre valutare l’espressione in ingresso.

{
module Main (main) where
import Scanner
}

%name calc
%tokentype { Token }
%error { parseError }

%token
    '+'     { TokenPlus }
    '-'     { TokenMinus }
    '*'     { TokenTimes }
    '/'     { TokenDiv }
    '('     { TokenOpenRound }
    ')'     { TokenClosedRound }
    '['     { TokenOpenBox }
    ']'     { TokenClosedBox }
    '{'     { TokenOpenCurly }
    '}'     { TokenClosedCurly }
    num     { TokenNum $$ }

%left '+' '-'
%left '*' '/'
%left NEG
%%

Exp         : Exp '+' Exp               {\p -> $1 p + $3 p}
            | Exp '-' Exp               {\p -> $1 p - $3 p}
            | Exp '*' Exp               {\p -> $1 p * $3 p}
            | Exp '/' Exp               {\p -> $1 p `div` $3 p}
            | '-' Exp %prec NEG         {\p -> - $2 p}
            | num                       {$1}
            

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

main = do
    s <- getContents
    print (lexer s)
    print (calc (lexer s) [])
}