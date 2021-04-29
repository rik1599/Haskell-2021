--- Reverse "Naive": quadratico
reverseA [] = []
reverseA (x:xs) = reverseA xs ++ [x]

--- Reverse efficiente con accumulatore
reverseAux [] acc = acc
reverseAux (x:xs) acc = reverseAux xs (x:acc)

reverseB xs = reverseAux xs []

--- versione con foldl
reverseC xs = foldl (\ ys x -> x:ys) [] xs

--- versione con foldr
reverseD xs = foldr (\ y ys-> (ys ++ [y])) [] xs