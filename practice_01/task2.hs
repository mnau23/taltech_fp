{- write a program in Haskell that calculates the perimeter and area of a circle with the given radius -}

getPerimeter :: Float -> Float
getPerimeter r = 2*pi*r

getArea :: Float -> Float
getArea r = pi*r*r

main = do
    putStrLn "The perimeter is:"
    print(getPerimeter(3))
    putStrLn "The area is:"
    print(getArea(3))
