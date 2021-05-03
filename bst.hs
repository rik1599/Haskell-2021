data BTree a = Null | BTree a (BTree a) (BTree a)

sommaBTree Null = 0
sommaBTree (BTree n tL tR) = n + sommaBTree tL + sommaBTree tR

depthBTree Null = 0
depthBTree (BTree n tL tR) = 1 + max (depthBTree tL) (depthBTree tR)
