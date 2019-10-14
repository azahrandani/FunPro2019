rev [1,2,3]
= foldr snoc [] [1,2,3]
= snoc [1] (foldr snoc [] [2,3])
= snoc [1] (snoc [2] (foldr snoc [] [3]))
= snoc [1] (snoc [2] (snoc [3] (foldr snoc [] [])))
= snoc [1] (snoc [2] (snoc [3] [])
= snoc [1] (snoc [2] ([3]))
= snoc [1] ([3,2])
= [3,2,1]