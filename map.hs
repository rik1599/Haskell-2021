-- Implementazione della funzione map

-- Versione con pattern Matching
mapPatternMatching f [] = []
mapPatternMatching f (x:xs) = f x : mapPatternMatching f xs

-- Versione con case
mapCase f xs = case xs of
    [] -> []
    (x:xs)  -> f x : mapCase f xs

-- Versione con ricorsione di coda
mapTailRecursion f xs = reverse (mapTailAux f xs [])
    where
        mapTailAux g [] acc =   acc
        mapTailAux g (y:ys) acc = mapTailAux g ys (g y : acc)

-- versione con foldl
mapFoldl f xs = reverse (foldl (\ acc x -> f x : acc) [] xs)

-- versione con foldr
mapFoldr f xs = foldr (\ x acc -> f x : acc) [] xs