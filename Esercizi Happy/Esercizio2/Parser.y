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
%%

Exp     : Exp '+' Exp           {PlusExp $1 $3}
        | Exp '-' Exp           {MinusExp $1 $3}
        | Exp '*' Exp           {TimesExp $1 $3}
        | Exp '/' Exp           {DivideExp $1 $3}
        | '{' CurlyExp '}'      {CurlyExp $2}
        | '[' BoxExp ']'        {BoxExp $2}
        | '(' LiteralExp ')'    {RoundExp $2}
        | num                   {NumExp $1}

CurlyExp    : CurlyExp '+' CurlyExp    {PlusCurlyExp $1 $3}
            | CurlyExp '-' CurlyExp    {MinusCurlyExp $1 $3}
            | CurlyExp '*' CurlyExp    {TimesCurlyExp $1 $3}
            | CurlyExp '/' CurlyExp    {DivideCurlyExp $1 $3}
            | '[' BoxExp ']'           {BoxInCurlyExp $2}
            | '(' LiteralExp ')'       {RoundInCurlyExp $2}
            | num                      {NumInCurlyExp $1}

BoxExp      : BoxExp '+' BoxExp         {PlusBoxExp $1 $3}
            | BoxExp '-' BoxExp         {MinusBoxExp $1 $3}
            | BoxExp '*' BoxExp         {TimesBoxExp $1 $3}
            | BoxExp '/' BoxExp         {DivideBoxExp $1 $3}
            | '(' LiteralExp ')'        {RoundInBoxExp $2}
            | num                       {NumInBox $1}

LiteralExp      : LiteralExp '+' LiteralExp       {Plus $1 $3}
                | LiteralExp '-' LiteralExp       {Minus $1 $3}
                | LiteralExp '*' LiteralExp       {Times $1 $3}
                | LiteralExp '/' LiteralExp       {Divide $1 $3}
                | num                             {Num $1}
            

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Exp
        = PlusExp Exp Exp
        | MinusExp Exp Exp
        | TimesExp Exp Exp
        | DivideExp Exp Exp
        | CurlyExp CurlyExp
        | BoxExp BoxExp
        | RoundExp LiteralExp
        | NumExp Int
        deriving Show

data CurlyExp
        = PlusCurlyExp CurlyExp CurlyExp
        | MinusCurlyExp CurlyExp CurlyExp
        | TimesCurlyExp CurlyExp CurlyExp
        | DivideCurlyExp CurlyExp CurlyExp
        | BoxInCurlyExp BoxExp
        | RoundInCurlyExp LiteralExp
        | NumInCurlyExp Int
        deriving Show

data BoxExp
        = PlusBoxExp BoxExp BoxExp
        | MinusBoxExp BoxExp BoxExp
        | TimesBoxExp BoxExp BoxExp
        | DivideBoxExp BoxExp BoxExp
        | RoundInBoxExp LiteralExp
        | NumInBox Int
        deriving Show

data LiteralExp
        = Plus LiteralExp LiteralExp
        | Minus LiteralExp LiteralExp
        | Times LiteralExp LiteralExp
        | Divide LiteralExp LiteralExp
        | Num Int
        deriving Show

main = do
    s <- getContents
    print (calc (lexer s))
}