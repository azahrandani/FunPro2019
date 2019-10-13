myFoldr f s [] = s
myFoldr f s (x:xs) = f x (myFoldr f s xs)

myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

mySum xs = myFoldr (+) 0 xs

mySquare n = n * n

-- coba otak-atik parenthesis di bawah ini
sumSquare n = mySum (myMap mySquare [1..n])

main = print(sumSquare 4)