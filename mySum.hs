myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

sumList [] = 0
sumList (x:xs) = x + sumList xs

main = print(sumList [1,2,3,4])

