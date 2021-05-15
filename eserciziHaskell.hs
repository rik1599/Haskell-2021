-- Esercizio Numeri.1
factorial 1 = 1
factorial n = n * factorial (n-1)

-- Esercizio Numeri.2
binomial n k
    | k == 0    = 1
    | n == k    = 1
    | otherwise = binomial (n-1) k + binomial (n-1) (k-1)

-- Esercizio Liste.1
removeEven xs = reverse (removeEvenAux xs 1 [])
    where
        removeEvenAux [] _ acc = acc
        removeEvenAux (x:xs) i acc
            | odd i    = removeEvenAux xs (i+1) (x:acc)
            | otherwise = removeEvenAux xs (i+1) acc

-- Esercizio Liste.4
minOdd xs = minOddAux oddListWithoutFirstTwo firstMinTuple
    where
        oddList = [x | x <- xs, odd x]
        oddListWithoutFirstTwo = tail (tail oddList)
        firstMinTuple = (head oddList, head (tail oddList))
        minOddAux [] mins = mins
        minOddAux (x:xs) (a, b)
            | x < a                 = minOddAux xs (x, a)
            | (x >= a) && (x < b)   = minOddAux xs (a, x)
            | otherwise             = minOddAux xs (a, b)


-- Esercizio Liste.5
tupleList [] = []
tupleList (x:xs) = (x, sum xs) : tupleList xs

-- Esercizio Matrici.1
matrixDim m  = matrixDimAux (tail m) 1 (length (head  m))
    where
        matrixDimAux [] rows cols = (rows, cols)
        matrixDimAux (r:m) rows cols
            | cols /= length r  = (-1, -1)
            | otherwise         = matrixDimAux m (rows + 1) cols

-- Esercizio Matrici.8
convergent m r = convergentAux m r 0
    where 
        convergentAux [] r i      = True
        convergentAux (row:m) r i = convergentAux m r (i+1) && (abs(sumRow row 0) < r)
            where
                sumRow [] _ = 0
                sumRow (x:xs) index
                    | index == i    = sumRow xs (index + 1)
                    | otherwise     = x + sumRow xs (index + 1)
