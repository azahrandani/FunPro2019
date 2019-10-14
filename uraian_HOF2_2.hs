xPlusY [1, 2, 3] [4, 5, 6] = [5,6,7,6,7,8,7,8,9]

xPlusY [1,2,3] [4,5,6]
a       = myMap (\y -> x+y) (y:ys)
        = myMap (\y -> x+y) [4,5,6]
(x=1)   = (\y -> x+y) [4] : myMap (\y -> x+y) [5,6]
(y=4)   = 1+4 : (\y -> x+y) [5] : myMap (\y -> x+y) [6]
(y=5)   = 5 : 1+5 : (\y -> x+y) [6] : myMap (\y -> x+y) []
(y=6)   = 5 : 6 : 1+6 : []
        = 5 : 6 : 7
        = [5,6,7]

b       = myMap (\x -> a) (x:xs)
        = [5,6,7] : [6,7,8] : [7,8,9]
        = [[5,6,7],[6,7,8],[7,8,9]]

xPlusY (x:xs) (y:ys)    = concat b
                        = [5,6,7,6,7,8,7,8,9]