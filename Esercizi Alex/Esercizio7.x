-- Riconoscere, in un file di testo, le sequenze di caratteri che rappresentano un numero in uno dei seguenti formati:
--     - numero intero: stringa di cifre decimali, eventualmente precedute dal segno (+/-)
--     - numero frazionari: coppia di stringhe di cifre intervallate da un punto ed eventualmente precedute dal segno, una delle due stringe, ma non entrambe può essere vuota.
--     - floating point: numero intero o frazionario, seguito da “e”, oppure “E”, seguito da un numero intero.
-- Per ciascuna sequenza riconosciuta, stampare in uscita: la sequenza stessa, il tipo di numero rappresentato, il numero di cifre usate nella rappresentazione.

{
module Main (main) where
}

%wrapper "basic"

$digit = 0-9
@number = $digit+
@sign = (\+|\-)?
@intNumber = @sign@number
@fracNumber = (@intNumber\.$digit*)|(@sign\.@number)
@floatingPointNumber = (@intNumber|@fracNumber)(e|E)(@intNumber)

tokens :-

    $white+                 ;
    @intNumber              { \s -> Int s (length s) }
    @fracNumber             { \s -> Frac s (length s) }
    @floatingPointNumber    { \s -> Float s (length s) }

{
data Token =
    Int String Int |
    Frac String Int |
    Float String Int
    deriving (Eq, Show)

main = do
    s <- getContents
    print (alexScanTokens s)
}


    