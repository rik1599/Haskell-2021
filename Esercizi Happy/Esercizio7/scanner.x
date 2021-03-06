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
    $white+                                     ;
    "##".*                                      ;
    \=                                          { \s -> TokenEq }
    \+                                          { \s -> TokenPlus }
    \-                                          { \s -> TokenMinus }
    \*                                          { \s -> TokenTimes }
    \(                                          { \s -> TokenOpenRound }
    \)                                          { \s -> TokenClosedRound }
    \[                                          { \s -> TokenOpenBox }
    \]                                          { \s -> TokenClosedBox }
    @num                                        { \s -> TokenNum (read s) }
    let                                         { \s -> TokenLet }
    case                                        { \s -> TokenCase }
    else                                        { \s -> TokenElse }
    [$alpha \_] [$alpha $digit \_ \']*          { \s -> TokenVar s }

{
data Token
    = TokenNum Int
    | TokenPlus
    | TokenMinus
    | TokenTimes
    | TokenOpenRound
    | TokenClosedRound
    | TokenOpenBox
    | TokenClosedBox
    | TokenEq
    | TokenLet
    | TokenVar String
    | TokenCase
    | TokenElse
    deriving (Eq,Show)

lexer = alexScanTokens
}