-- Somma elementi pari in una lista

-- Versione con Pattern Matching 
sommaPariPatternMatching [] = 0
sommaPariPatternMatching (x:xs)
    | even x     =  x + sommaPariPatternMatching xs
    | otherwise  =  sommaPariPatternMatching xs

-- Versione con ricorsione di cosa

sommaPariTailRecursion xs = sommaPariAux xs 0
    where
        sommaPariAux [] acc = acc
        sommaPariAux (x:xs) acc
            | even x    =   sommaPariAux xs (acc + x)
            | otherwise =   sommaPariAux xs acc

-- Versione con fold
sommaPariFoldl xs = foldl (addEven) 0 xs
    where
        addEven acc x
            | even x    =   x + acc
            | otherwise =   acc

-- Versione con foldr
sommaPariFoldr xs = foldr (addEven) 0 xs
    where
        addEven x acc
            | even x    =   acc + x
            | otherwise =   acc