data Expr = C Float | Expr :+ Expr | Expr :- Expr
                | Expr :* Expr | Expr :/ Expr
        deriving Show

-- map f [] = []
-- map f (x:xs) = f x : map f xs

exprMap :: (Expr -> Expr) -> [Expr] -> [Expr]
exprMap f [] = []
exprMap f (x:xs) = f x : exprMap f xs

aFunction expr = expr :+ C 1

main = print(exprMap aFunction [C 8, C 9, C 10])