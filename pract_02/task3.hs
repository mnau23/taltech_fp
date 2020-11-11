{- if the end points of a line segment is (x1, y1) and (x2, y2) then write
   a program to find the midpoint of the line segment using tuples -}

calcMidpoint :: (Double,Double) -> (Double,Double) -> (Double,Double)
calcMidpoint (x1,y1) (x2,y2) = (x,y) where
    x = (x1 + x2) / 2
    y = (y1 + y2) / 2

main = do
    putStrLn "First abscissa: "
    x1 <- readLn
    putStrLn "First ordinate: "
    y1 <- readLn
    putStrLn "Second abscissa: "
    x2 <- readLn
    putStrLn "Second ordinate: "
    y2 <- readLn
    putStrLn "The midpoint of the line segment is:"
    print(calcMidpoint(x1,y1) (x2,y2))
