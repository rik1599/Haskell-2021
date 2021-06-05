mergeList :: Ord a => [a] -> [a] -> [a]
mergeList [] _ = []
mergeList _ [] = []
mergeList (x:xs) (y:ys)
    | x == y    = x : mergeList xs ys
    | x < y     = mergeList xs (y:ys)
    | x > y     = mergeList (x:xs) ys

mergeMatrix :: Ord a => [[a]] -> [a]
mergeMatrix [] = []
mergeMatrix (x:m) = mergeMatrixAux m x
    where
        mergeMatrixAux :: Ord a => [[a]] -> [a] -> [a]
        mergeMatrixAux [] acc = acc
        mergeMatrixAux (x:m) acc = mergeMatrixAux m (mergeList x acc)


