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
    var     { TokenVar $$ }
    let     { TokenLet }
    case    { TokenCase }
    else    { TokenElse }

%left '='
%left '+' '-'
%left '*'
%left NEG
%%

Sequence    : Exp Sequence  {}
            | {- Empty -}   {}

Exp         : Literal       {}
            | LetExp        {}
            | CaseExp       {}

Literal     : Literal '+' Literal   {}
            | Literal '-' Literal   {}
            | Literal '*' Literal   {}
            | Literal '=' Literal   {}
            | '-' Literal %prec NEG {}
            | '(' Literal ')'       {}
            | num                   {}
            | var                   {}

LetExp      : '(' let '(' Declaration ')' '(' Exp ')' ')'   {}

CaseExp     : '(' case '(' Exp ')' CaseBody ')'             {}
            | '(' case '(' Exp ')' CaseBody ElseBody ')'    {}

Declaration : '(' var Exp ')' Declaration                   {}
            | {- Empty -}                                   {}

CaseBody    : '(' '(' Literal ')' Exp ')' CaseBody      {}
            | {- Empty -}                               {}

ElseBody    : '(' else Exp ')'      {}

{

parseError :: [Token] -> a
parseError _ = error "Parse error"

main = do
    s <- getContents
    print (lexer s)
    print (calc (lexer s) [])
}