plusFour xys = [ x+4 | (x,y) <- xys, x+y < 5 ]

main = print(plusFour[(1,2),(3,1),(3,4)])