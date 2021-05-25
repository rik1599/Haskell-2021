-- Il linguaggio delle espressioni aritmetiche nella forma usata nelle scuole medie, ossia
--     - numeri interi,
--     - 4 operazioni aritmetiche,
--     - le tre forme di parantesi: tonde, quadre, graffe. 
-- L’analizzatore deve controllare che le parentesi siano inserite secondo le usuali regole: parentesi tonde più interne, 
-- seguite dalle quadre, e poi graffe. L’analizzatore deve inoltre valutare l’espressione in ingresso.

{
module Scanner (Token(..), lexer) where
}

%wrapper "basic"

$digit = 0-9
@num = $digit+

tokens :-

    $white+     ;
    \+          { \s -> TokenPlus }
    \-          { \s -> TokenMinus }
    \*          { \s -> TokenTimes }
    \/          { \s -> TokenDiv }
    \(          { \s -> TokenOpenRound }
    \)          { \s -> TokenClosedRound }
    \[          { \s -> TokenOpenBox }
    \]          { \s -> TokenClosedBox }
    \{          { \s -> TokenOpenCurly }
    \}          { \s -> TokenClosedCurly }
    @num        { \s -> TokenNum (read s) }

{
data Token
    = TokenNum Int
    | TokenPlus
    | TokenMinus
    | TokenTimes
    | TokenDiv
    | TokenOpenRound
    | TokenClosedRound
    | TokenOpenBox
    | TokenClosedBox
    | TokenOpenCurly
    | TokenClosedCurly
    deriving (Eq,Show)

lexer = alexScanTokens
}