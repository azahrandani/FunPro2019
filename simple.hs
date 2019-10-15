simple n a b = n * (a-b)

aFunction = simple 5 2

myFlip f x y = f y x

newSimple = myFlip simple
newSimple2 n = myFlip (simple n)

main = print(newSimple2 5 2 3)