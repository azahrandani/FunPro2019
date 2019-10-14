myLength[3, 7, 9]
= mySum (myMap toOne [3, 7, 9])
= mySum (toOne 3 : map toOne [7, 9])
= mySum (1 : toOne 7 : map toOne [9])
= mySum (1 : 1 : toOne 9 : map toOne [])
= mySum (1 : 1 : 1 : [])
= mySum [1, 1, 1]
= 1 + mySum [1, 1]
= 1 + 1 + mySum [1]
= 1 + 1 + 1 + mySum []
= 1 + 1 + 1 + 0
= 3