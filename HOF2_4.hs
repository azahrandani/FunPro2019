-- theFunction xys = [x+3 | (x,_) <- xys]

myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

plusTree x = x + 3

theFunction xys = myMap plusTree (myMap fst xys)

main = print(theFunction [(1,2),(3,4),(7,4),(8,2)])