-- input : [[(1,4),(1,5),(1,6)], [(2,4),(2,5),(2,6)]]
-- output : [5,6,7,6,7,8]

addTuple (x,y) = x + y

oneListOfTuples xs = map addTuple xs

turnToList xss = concat (map oneListOfTuples xss)

main = print(turnToList [[(1,4),(1,5),(1,6)], [(2,4),(2,5),(2,6)]])