{- Write a program to solve x^2+2x+5 for any x using functor. -}

module Main where
data MyFunctor a = MyCoefs a deriving (Show)
instance Functor MyFunctor where
   fmap f (MyCoefs x) = MyCoefs (f x)

roots :: (Float, Float, Float) -> (Float, Float)
roots (a,b,c) = (x1, x2) where
    x1 = e + sqrt d/(2*a)
    x2 = e - sqrt d/(2*a)
    d = b*b -4*a*c
    e = -b/(2*a)

main = do
    let coef = MyCoefs (1,2,5)
    putStrLn $ "\nThe coefficients of the equation are:"
    print coef
    putStrLn $ "\nThe roots of the equation are:"
    print (fmap (roots) coef)
