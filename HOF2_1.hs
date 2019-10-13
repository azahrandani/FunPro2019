-- latian higher order 2.1

myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

plusOne x = x + 1

main = print(myMap plusOne [11, 20, 35])