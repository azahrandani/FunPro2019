foldr1 (+) [3, 98, 1]
= (+) [3] (foldr1 (+) [98, 1])
= (+) [3] ((+) [98] (foldr1 (+) [1]))
= (+) [3] ((+) [98] ((+) [1]) (foldr1 (+) []))
= (+) [3] ((+) [98] ([1]))
= (+) [3] 99
= 102

foldl (+) [] [1, 2, 3]
= foldl (+) ((+) [] [1]) [2, 3]
= foldl (+) ((+) 1 [2]) [3]
= foldl (+) ((+) 3 [3]) []
= 6

sumSquare 3
= mySum myMap mySquare [1, 2, 3]
= mySum mySquare [1] : myMap mySquare [2, 3]
= mySum 1 : mySquare [2] : myMap mySquare [3]
= mySum 1 : 4 : mySquare [3] : myMap mySquare []
= mySum 1 : 4 : 9 : []
= mySum [1 : 4 : 9]
= mySum [1, 4, 9]
= myFoldr (+) 0 [1, 4, 9]
= (+) [1] (myFoldr (+) 0 [4, 9])
= (+) [1] ((+) [4] (myFoldr (+) 0 [9]))
= (+) [1] ((+) [4] ((+) [9] myFoldr (+) 0 []))
= (+) [1] ((+) [4] ((+) [9] 0))
= (+) [1] ((+) [4] (9))
= (+) [1] (13)
= 14