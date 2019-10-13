mapA f [] = []
mapA f (x:xs) = f x : mapA f xs

double x = 2*x
doubleAll xs = mapA double xs

main = print(doubleAll [2, 3, 4])