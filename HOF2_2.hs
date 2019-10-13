-- latian higher order 2.2

-- myMap :: (a -> b) -> [a] -> [b]
myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

-- xPlusY :: [Integer] -> [Integer] -> [Integer]
xPlusY (x:xs) (y:ys) = concat (myMap (\x -> myMap (\y -> x+y) (y:ys)) (x:xs))   

main = print(xPlusY [1,2,3] [4,5,6])
