{- write a program in Haskell that calculates the Euclidian distance between two coordinates (x1,y1) and (x2,y2) -}

distEucl :: ((Float, Float),(Float, Float)) -> Float
distEucl ((x1, y1),(x2, y2)) = d where
    d = sqrt (x*x + y*y)
    x = (x2 - x1)
    y = (y2 - y1)

main = do
    putStrLn "The Euclidian distance is"
    print(distEucl((1,1),(2,2)))
