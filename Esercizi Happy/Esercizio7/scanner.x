-- Sequenze di espressioni in linguaggio Scheme formate da:
--     - numeri interi
--     - operazioni aritmetiche: +, *, - 
--     - test di uguaglianza: =
--     - costrutti let in e case
-- L’analizzatore deve valutare le espressioni ricevute in ingresso.

{
module Scanner (Token(..), lexer) where
}

%wrapper "basic"

$digit = 0-9
@num = $digit+
$alpha = [a-zA-z]

tokens :-
    $white+     ;
    \=          { \s -> TokenEq }
    \+          { \s -> TokenPlus }
    \-          { \s -> TokenMinus }
    \*          { \s -> TokenTimes }
    \(          { \s -> TokenOpenRound }
    \)          { \s -> TokenClosedRound }
    @num        { \s -> TokenNum (read s) }

{
data Token
    = TokenNum Int
    | TokenPlus
    | TokenMinus
    | TokenTimes
    | TokenOpenRound
    | TokenClosedRound
    deriving (Eq,Show)

lexer = alexScanTokens
}