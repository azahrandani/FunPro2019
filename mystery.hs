mystery xs = foldr (++) [] (map sing xs)
    where
        sing x = [x]

main = print (mystery [2,5,6])