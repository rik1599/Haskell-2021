-- NUMERI
-- Esercizio 1
factorial 1 = 1
factorial n = n * factorial (n-1)

-- Esercizio 2
binomial n k
    | k == 0    = 1
    | n == k    = 1
    | otherwise = binomial (n-1) k + binomial (n-1) (k-1)

-- LISTE
-- Esercizio 1
removeEven [] = []
removeEven [x] = [x]
removeEven (x:y:xs) = x : removeEven xs

-- Esercizio 4
minOdd xs = minOddAux oddListWithoutFirstTwo firstMinTuple
    where
        oddList = [x | x <- xs, odd x]
        oddListWithoutFirstTwo = tail (tail oddList)
        firstMinTuple = (head oddList, head (tail oddList))
        minOddAux [] mins = mins
        minOddAux (x:xs) (a, b)
            | x < a                 = minOddAux xs (x, a)
            | x >= a && x < b   = minOddAux xs (a, x)
            | otherwise             = minOddAux xs (a, b)

-- Esercizio 6
antecedentList xs = reverse (antecedentListAux xs 0 [])
    where
        antecedentListAux [] _ acc = acc
        antecedentListAux (x:xs) sum acc = antecedentListAux xs (sum + x) ((x, sum) : acc)

-- Esercizio 7
shiftToZero xs = [x - min | x <- xs]
    where
        min = minimum xs

-- MATRICI
-- Esercizio 1
matrixDim m  = matrixDimAux (tail m) 1 (length (head  m))
    where
        matrixDimAux [] rows cols = (rows, cols)
        matrixDimAux (r:m) rows cols
            | cols /= length r  = (-1, -1)
            | otherwise         = matrixDimAux m (rows + 1) cols

-- Esercizio 8
convergent m r = convergentAux m r 0
    where
        convergentAux [] r i      = True
        convergentAux (row:m) r i = convergentAux m r (i+1) && abs(sumRow row 0) < r
            where
                sumRow [] _ = 0
                sumRow (x:xs) index
                    | index == i    = sumRow xs (index + 1)
                    | otherwise     = x + sumRow xs (index + 1)

-- Esercizio 9
transpose [] = []
transpose ([]:xss) = transpose xss
transpose ((x:xs): xss) = (x : [h | (h:_) <- xss]) : transpose (xs : [t | (_:t) <- xss])

-- Esercizio 11
matrixProd m1 m2 = matrixProdAux m1 tM2
    where
        tM2 = transpose m2
        matrixProdAux [] _ = []
        matrixProdAux (row:m1) m2 = calculateRow row m2 : matrixProdAux m1 m2
            where
                calculateRow row [] = []
                calculateRow row (col:m2) = calculateElement row col 0: calculateRow row m2
                    where
                        calculateElement [] [] acc = acc
                        calculateElement (x:row) (y:col) acc = calculateElement row col (x*y + acc)

-- ALBERI
data BTree a = NullBTree | BTree a (BTree a) (BTree a)
    deriving (Eq, Ord, Read, Show)

-- Esercizio 4
bstElem NullBTree _ = False
bstElem (BTree n left right) x
    | n == x    = True
    | x < n     = bstElem left x
    | otherwise = bstElem right x
infixl 9 `bstElem`

-- Esercizio 6
bst2List :: BTree a -> [a]
bst2List tree = linearInOrder tree []
    where
        linearInOrder NullBTree acc = acc
        linearInOrder (BTree x l r) acc = linearInOrder l (x : linearInOrder r acc) 

-- Esercizio 9
annotate :: (Num b, Ord b) => BTree a -> BTree (a, b)
annotate NullBTree = NullBTree
annotate (BTree x leftSon rightSon) = BTree (x, nodeHeight) newLeftSon newRightSon
    where
        newLeftSon = annotate leftSon
        newRightSon = annotate rightSon
        nodeHeight = 1 + max (getNodeheight newLeftSon) (getNodeheight newRightSon)
        getNodeheight NullBTree = 0
        getNodeheight (BTree (x, h) l r) = h

fold :: (Ord a) => (a -> b -> b -> b) -> b -> BTree a -> b
fold _ z NullBTree = z
fold f z (BTree x l r) = f x (fold f z l) (fold f z r)

-- Esercizio 12
diff2next root = diff2nextAux root root
    where
        diff2nextAux NullBTree _ = NullBTree
        diff2nextAux (BTree x l r) root = BTree (x, diffSucc) (diff2nextAux l root) (diff2nextAux r root)
            where
                getValue (BTree val _ _) = val
                diffSucc
                    | successor == NullBTree    = 0
                    | otherwise                 =  getValue successor - x
                successor = inOrderSuccessor root (BTree x l r) NullBTree
                    where
                        inOrderSuccessor NullBTree _ _ = NullBTree
                        inOrderSuccessor (BTree xRoot lRoot rRoot) (BTree x l r) s
                            | xRoot == x    = if rRoot /= NullBTree then findMin rRoot else s
                            | x < xRoot     = inOrderSuccessor lRoot (BTree x l r) (BTree xRoot lRoot rRoot)
                            | otherwise     = inOrderSuccessor rRoot (BTree x l r) s
                        findMin NullBTree = NullBTree
                        findMin (BTree x NullBTree _) = BTree x NullBTree NullBTree
                        findMin (BTree x l _) = findMin l

-- Esercizio 14
treeHeight :: (Num p, Ord a, Ord p) => BTree a -> p
treeHeight NullBTree = 0
treeHeight tree = fold (\ val lacc racc -> 1 + max lacc racc) 0 tree

-- ALBERI GENERICI
data Tree a = NullTree | Tree a [Tree a]
    deriving (Eq, Show)

-- Esercizio 1
treefold :: (Eq a, Show a) => (a -> [b] -> b) -> b -> Tree a -> b
treefold _ z NullTree = z
treefold f z (Tree val sons) = f val [treefold f z x | x <- sons]

-- Esercizio 2
height :: (Num p, Show a, Ord p, Eq a) => Tree a -> p
height = treefold (\ x sonsHeight -> 1 + maxHeight sonsHeight) (-1)
    where
        maxHeight [] = -1
        maxHeight (x:xs) = max x (maxHeight xs)

-- Esercizio 3
simplify :: (Eq a, Show a) => Tree a -> Tree a
simplify NullTree = NullTree
simplify tree = treefold (\ val sons -> Tree val [x | x <- sons, x /= NullTree]) NullTree tree

-- Esercizio 4
treefoldr :: (Eq a, Show a) => (a -> b -> c) -> c -> (c -> b -> b) -> b -> Tree a -> c
treefoldr _ z _ _ NullTree = z
treefoldr f z g k (Tree val sons) = f val (foldr (g . treefoldr f z g k) k sons)

treefoldl :: (Eq a, Show a) => (b -> a -> c) -> c -> (c -> b -> b) -> b -> Tree a -> c
treefoldl _ z _ _ NullTree = z
treefoldl f z g k (Tree val sons) = f (foldl (\ w tree -> g (treefoldl f z g k tree) w) k sons) val

-- Esercizio 5
heighttreefoldr NullTree = -1
heighttreefoldr tree = treefoldr (\ val maxSonHeight -> 1 + maxSonHeight) (-1) max (-1) tree

-- Esercizio 10
normalize :: (Integral a, Show a, Fractional b) => Tree a -> Tree b
normalize NullTree = NullTree
normalize tree = treefoldr (\ val sons -> Tree (fromIntegral val / fromIntegral inverse) sons) NullTree (:) [] tree
    where
        inverse = heighttreefoldr tree