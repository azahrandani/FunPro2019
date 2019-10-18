data Expr = C Float | Expr :+ Expr | Expr :- Expr
                | Expr :* Expr | Expr :/ Expr
        deriving Show

-- map f [] = []
-- map f (x:xs) = f x : map f xs

exprMap :: (Expr -> Expr) -> [Expr] -> [Expr]
exprMap f [] = []
exprMap f (x:xs) = f x : exprMap f xs

aFunction expr = expr :+ C 1

-- main = print(exprMap aFunction [C 8, C 9, C 10])

exprFoldr :: (Expr -> Expr -> Expr) -> Expr -> [Expr] -> Expr
exprFoldr op init [] = init
exprFoldr op init (x:xs) = op x (exprFoldr op init xs)

theFunction expr1 expr2 = expr1

main = print(exprFoldr theFunction (C 0) [C 16, C 2, C 3, C 10])