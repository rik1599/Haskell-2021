-- Sequenze di espressioni in linguaggio Scheme formate da:
--     - numeri interi
--     - operazioni aritmetiche: +, *, - 
--     - test di uguaglianza: =
--     - costrutti let in e case
-- L’analizzatore deve valutare le espressioni ricevute in ingresso.

{
module Main (main) where
import Scanner
}

%name calc
%tokentype { Token }
%error { parseError }

%token
    '='     { TokenEq }
    '+'     { TokenPlus }
    '-'     { TokenMinus }
    '*'     { TokenTimes }
    '('     { TokenOpenRound }
    ')'     { TokenClosedRound }
    num     { TokenNum $$ }

%left '+' '-'
%left '*'
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