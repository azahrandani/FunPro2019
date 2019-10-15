plusFive mxs = [ x+5 | Just x <- mxs ]
main = print(plusFive [Just 1, Just 2, Just 3, Just 4, Just 5])