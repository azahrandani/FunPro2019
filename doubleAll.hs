doubleAll :: [Int] -> [Int]
doubleAll xs = [2*x | x <- xs]

main = print(doubleAll [2, 4, 8])