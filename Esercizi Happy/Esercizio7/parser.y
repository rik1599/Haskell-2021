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

Seq     :: { [Exp] }
Seq     : Seq '(' Exp ')'       { $3 : $1 }
        | {- Empty -}           { [] }

Exp     :: { Exp }
Exp     : let '(' Declarations ')' '(' Exp ')'       {Let $3 $6}
        | case '(' Exp ')' ThenBody                  {Case $3 $5}
        | '+' Exp Exp       {Plus $2 $3}
        | '-' Exp Exp       {Minus $2 $3}
        | '*' Exp Exp       {Times $2 $3}
        | '=' Exp Exp       {Equal $2 $3}
        | '(' Exp ')'       {$2}
        | num               {Num $1}
        | var               {Var $1}

Declarations    :: { [Declaration] }    
Declarations    : Declarations '[' var '(' Exp ')' ']'  { (Declaration $3 $5) : $1 }
                | {- Empty -}   { [] }

ThenBody        :: { [Then] }
ThenBody        : '[' '(' Exp ')' '(' Exp ')' ']' '[' else '(' Exp ')' ']'     { (Then $3 $6) : (Else $12) : [] }
                | '[' '(' Exp ')' '(' Exp ')' ']' ThenBody                     { (Then $3 $6) : $9 }
                | {- Empty -}   { [] }

{

data Exp    
    = Let [Declaration] Exp
    | Case Exp [Then]
    | Plus Exp Exp
    | Minus Exp Exp
    | Times Exp Exp
    | Equal Exp Exp
    | Num Int
    | Var String
    deriving Show

data Declaration
    = Declaration String Exp
    deriving Show

data Then
    = Then Exp Exp
    | Else Exp
    deriving Show


parseError :: [Token] -> a
parseError _ = error "Parse error"

main = do
    s <- getContents
    print (lexer s)
    print (calc (lexer s))
}