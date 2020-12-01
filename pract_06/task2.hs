{- Write a program in Haskell which calculates the
   following expression: (1+2)/(9*2)+56*3.4 -}

data Expr = Num Float
          | Add Expr Expr
          | Mul Expr Expr
          | Div Expr Expr

-- Haskell representation of the expression:
-- Add (Div (Add (Num 1) (Num 2)) (Mul (Num 9) (Num 2))) (Mul (Num 56) (Num 3.4))
