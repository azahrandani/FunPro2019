mystery [4,5,6]
= foldr (++) [] (map sing [4,5,6])
= foldr (++) [] (sing [4] : map sing [5,6,])
= foldr (++) [] ([4] : sing [5] : map sing [6])
= foldr (++) [] ([4] : [5] : sing [6] : map sing [])
= foldr (++) [] ([4] : [5] : [6] : [])
= foldr (++) [] [4,5,6]
= (++) [4] (foldr (++) [] [5,6])
= (++) [4] ((++) [5] (foldr (++) [] [6]))
= (++) [4] ((++) [5] ((++) [6] (foldr (++) [] [])))
= (++) [4] ((++) [5] ((++) [6] []))
= (++) [4] ((++) [5] [6])
= (++) [4] ([5,6])
= [4,5,6]
