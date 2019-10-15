-- map f [] = []
-- map f (x:xs) = f x : map f xs
-- foldr op init [] = init
-- foldr op init (x:xs) = op x (foldr op init xs)

-- composeList :: [Integer -> Integer] -> Integer
composeList xs = foldr (.) id xs

one :: Integer -> Integer
one x = x + 1

two :: Integer -> Integer
two x = x * 2

three :: Integer -> Integer
three x = x - 3

oneFunction = composeList [one, two, three]

main = print(oneFunction 12)