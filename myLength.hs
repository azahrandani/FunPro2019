myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

mySum [] = 0
mySum (x:xs) = x + mySum xs

myLength xs = mySum (myMap toOne xs)
    where toOne _ = 1

main = print(myLength [2, 3, 4, 5])