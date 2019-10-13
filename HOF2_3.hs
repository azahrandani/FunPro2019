-- plusTwo xs = [x+2 | x <- xs, x >3]

myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

myFilter p [] = []
myFilter p (x:xs)   | p x = x : myFilter p xs
                    | otherwise = myFilter p xs

plusTwo x = x + 2
moreThanThree x = x > 3

theFunction (x:xs) = myMap plusTwo (myFilter moreThanThree (x:xs))

main = print(theFunction [1,2,3,4,5,6])