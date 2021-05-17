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
            | (x >= a) && (x < b)   = minOddAux xs (a, x)
            | otherwise             = minOddAux xs (a, b)
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
        convergentAux (row:m) r i = convergentAux m r (i+1) && (abs(sumRow row 0) < r)
            where
                sumRow [] _ = 0
                sumRow (x:xs) index
                    | index == i    = sumRow xs (index + 1)
                    | otherwise     = x + sumRow xs (index + 1)

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

-- Esercizio 9
data Node a = Leaf | Node a Integer
    deriving (Eq, Ord, Read, Show)

annotate NullBTree = BTree Leaf NullBTree NullBTree
annotate (BTree x leftSon rightSon) = BTree (Node x nodeHeight) newLeftSon newRightSon
    where
        newLeftSon = annotate leftSon
        newRightSon = annotate rightSon
        nodeHeight = 1 + max (getNodeheight newLeftSon) (getNodeheight newRightSon)
        getNodeheight (BTree Leaf l r) = 0
        getNodeheight (BTree (Node x h) l r) = h

fold :: (Ord a) => (a -> b -> b -> b) -> b -> BTree a -> b
fold _ z NullBTree = z
fold f z (BTree x l r) = f x (fold f z l) (fold f z r)

-- Esercizio 14
treeHeight NullBTree = 0
treeHeight tree = fold (\ val lacc racc -> 1 + max lacc racc) 0 tree

-- ALBERI GENERICI
data Tree a = NullTree | Tree a [Tree a]
    deriving (Eq, Show)

-- Esercizio 1
treefold :: (Eq a, Show a) => (a -> [b] -> b) -> b -> Tree a -> b
treefold f z NullTree = z
treefold f z (Tree val sons) = f val [treefold f z x | x <- sons]

-- Esercizio 2
height :: (Num p, Show a, Ord p, Eq a) => Tree a -> p
height = treefold (\ x sonsHeight -> 1 + maxHeight sonsHeight) (-1)
    where
        maxHeight [] = -1
        maxHeight (x:xs) = max x (maxHeight xs)

-- Esercizio 4
--treefoldr :: (Eq a, Show a) => (a -> b -> c) -> c -> (c -> b -> b) -> b -> Tree a -> c
--treefoldr _ z _ _ NullTree = z
--treefoldr f z g k (Tree val []) = treefoldr f z g k 
--treefoldr f z g k (Tree val (x:sons)) = f val (g (treefoldr f z g k x) k)

-- QUAD TREES
data QT a = C a | Q (QT a) (QT a) (QT a) (QT a)
    deriving (Eq, Show)

-- Esercizio 1