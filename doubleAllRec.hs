doubleAll [] = []
doubleAll (x:xs) = 2*x : doubleAll xs

main = print(doubleAll [4, 5, 6])