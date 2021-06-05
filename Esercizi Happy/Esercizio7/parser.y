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
    '['     { TokenOpenBox }
    ']'     { TokenClosedBox }
    num     { TokenNum $$ }
    var     { TokenVar $$ }
    let     { TokenLet }
    case    { TokenCase }
    else    { TokenElse }

%left '='
%left '+' '-'
%left '*'
%%

Seq     : Seq '(' Exp ')'       { $2 : $1 }
        | {- Empty -}           { [] }

Exp     : let '(' Declaration ')' '(' Exp ')'       {Let $3 $6}
        | case '(' Exp ')' ThenBody                 {Case $3 $5}
        | '+' Exp Exp       {Plus $2 $3}
        | '-' Exp Exp       {Minus $2 $3}
        | '*' Exp Exp       {Times $2 $3}
        | '=' Exp Exp       {Equal $2 $3}
        | '(' Exp ')'       {$2}
        | num               {Num $1}
        | var               {Var $1}

Declaration     : Declaration '[' var '(' Exp ')' ']'  { (Declaration $3 $5) : $1 }
                | {- Empty -}   { [] }

ThenBody        : '[' '(' Exp ')' '(' Exp ')' ']' '[' else '(' Exp ')' ']'     { (Then $3 $5) : (Else $5) : [] }
                | '[' '(' Exp ')' '(' Exp ')' ']' ThenBody                     { (Then $3 $5) : $9}
                | {- Empty -}   {[]}

{

parseError :: [Token] -> a
parseError _ = error "Parse error"

main = do
    s <- getContents
    print (calc (lexer s) [])
}