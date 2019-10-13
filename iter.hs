iter n f
    | n>0 = f . iter (n-1) f
    | otherwise = id

addOne x = x + 1

myMain x = \n -> iter n addOne
-- main = print(iter 0 addOne 8)
main = print(myMain 2 6)