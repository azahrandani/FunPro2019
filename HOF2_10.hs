mapXandY xys = filter (>3) (map (\(x,y) -> x+y) xys)
main = print(mapXandY [(1,2), (4,5), (3,2)])