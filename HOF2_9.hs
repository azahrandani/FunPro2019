-- makeXandY xs ys = concat (map (\x -> map (\y -> (x,y)) ys) xs)
makeXandY xs ys = [(x,y) | x <- xs, y <- ys]

main = print(makeXandY [1,2,3] [4,5,6])