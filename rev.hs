-- foldr op init [] = init
-- foldr op init (x:xs) = op x (foldr op init xs)

snoc :: a -> [a] -> [a]
snoc x xs = xs ++ [x]

rev :: [a] -> [a]
rev xs = foldr snoc [] xs

main = print(rev [3,4,5,6,7,8])