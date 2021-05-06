data BTree a = Null | BTree a (BTree a) (BTree a)

sommaBTree :: Num p => BTree p -> p
sommaBTree Null = 0
sommaBTree (BTree n tL tR) = n + sommaBTree tL + sommaBTree tR

depthBTree :: (Num p, Ord p) => BTree a -> p
depthBTree Null = 0
depthBTree (BTree n tL tR) = 1 + max (depthBTree tL) (depthBTree tR)


takeDepthBT :: (Eq a1, Num a1) => a1 -> BTree a2 -> BTree a2
takeDepthBT 0 _ = Null
takeDepthBT _ Null = Null
takeDepthBT n (BTree a tL tR) = BTree a (takeDepthBT (n-1) tL) (takeDepthBT (n-1) tR)


insertBST x Null = BTree x Null Null
insertBST x (BTree y tL tR) = 
    if x < y 
        then 
            BTree y (insertBST x tL) tR 
        else
            BTree y tL (insertBST x tR)

visitBST Null = []
visitBST (BTree x tL tR) = visitBST tL ++ x : visitBST tR

visitBSTTail bst = visitBSTAcc bst []
    where
        visitBSTAcc Null acc = acc
        visitBSTAcc (BTree x tL tR) acc = visitBSTAcc tL (x : visitBSTAcc tR acc)

insertListBST [] bst = bst
insertListBST (x: xs) bst = insertListBST xs (insertBST x bst)

insertListBSTFoldl xs bst = foldl (\ bst x -> insertBST x bst) Null xs

insertListBSTFoldr xs bst = foldr insertBST Null xs

ordina xs = visitBSTTail (insertListBST xs Null)