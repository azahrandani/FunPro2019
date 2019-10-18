evaluate (Let "y" (C 9) (Let "x" (C 5) (V "x" :+ V "y" :+ (C 7))))
                         --------------------------------------- 
          Let  v    e0                      e1

line 91
evaluate (subst "y" (C 9) (Let "x" (C 5) (V "x" :+ V "y" :+ (C 7))) )
                                          -----------------------
          subst  v0   e0  (Let  v1   e1              e2) 

line 82
evaluate (Let "x" (C 5) (subst "y" (C 9) (V "x" :+ V "y" :+ (C 7))))
                         ----------------------------------------
          Let  v    e0                      e1

line 78
evaluate (Let "x" (C 5) (subst "y" (C 9) (V "x") :+ subst "y" (C 9) (V "y")) :+ (C 7))

line 76
evaluate (Let "x" (C 5) (V "x" :+ (C 9) :+ (C 7)))

line 91
evaluate (subst "x" (C 5) (V "x" :+ (C 9) :+ (C 7)))

line 78
evaluate (subst "x" (C 5) (V "x") :+ subst "x" (C 5) (C 9) :+ (C 7))

line 76 & 77
evaluate ((C 5) :+ (C 9) :+ (C 7))

line 87
evaluate (C 5) + evaluate ((C 9) :+ (C 7))


---------------------------------------------------------------------------------------------
SALAH

line 91
evaluate (subst "x" (C 5) (subst "y" (C 9) (V "x" :+ V "y" :+ (C 7))) )
                           -----------------------------------------
          subst  v    e0                      e1

