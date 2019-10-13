myList xs = [x+3 | x <- xs ]

myFilter xs = [x | x <- xs , x > 7 ]

myConcat xs ys = [(x,y) | x <- xs, y <- ys]

-- filter (>3) (map (\(x,y) -> x+y) xys)
myFilterTwo xys = [ x+y | (x,y) <- xys, x+y > 3]

main = print(myFilterTwo [(1,2), (2,5), (1,1), (8,2)])