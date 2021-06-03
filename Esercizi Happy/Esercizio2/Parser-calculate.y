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

Exp     : Exp '+' Exp           {$1 + $3}
        | Exp '-' Exp           {$1 - $3}
        | Exp '*' Exp           {$1 * $3}
        | Exp '/' Exp           {$1 `div` $3}
        | '{' CurlyExp '}'      {$2}
        | '[' BoxExp ']'        {$2}
        | '(' LiteralExp ')'    {$2}
        | num                   {$1}

CurlyExp    : CurlyExp '+' CurlyExp    {$1 + $3}
            | CurlyExp '-' CurlyExp    {$1 - $3}
            | CurlyExp '*' CurlyExp    {$1 * $3}
            | CurlyExp '/' CurlyExp    {$1 `div` $3}
            | '[' BoxExp ']'           {$2}
            | '(' LiteralExp ')'       {$2}
            | num                      {$1}

BoxExp      : BoxExp '+' BoxExp         {$1 + $3}
            | BoxExp '-' BoxExp         {$1 - $3}
            | BoxExp '*' BoxExp         {$1 * $3}
            | BoxExp '/' BoxExp         {$1 `div` $3}
            | '(' LiteralExp ')'        {$2}
            | num                       {$1}

LiteralExp      : LiteralExp '+' LiteralExp       {$1 + $3}
                | LiteralExp '-' LiteralExp       {$1 - $3}
                | LiteralExp '*' LiteralExp       {$1 * $3}
                | LiteralExp '/' LiteralExp       {$1 `div` $3}
                | num                             {$1}
            

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

main = do
    s <- getContents
    print (calc (lexer s))
}