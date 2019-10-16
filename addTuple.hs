-- input : [[(1,4),(1,5),(1,6)], [(2,4),(2,5),(2,6)]]
-- output : [5,6,7,6,7,8]

addTuple (x,y) = x + y

turnToList xs = map addTuple xs

main = print(turnToList [(1,4),(1,5),(1,6)])