{- write a program in Haskell that calculates the hypotenuse (c) of the right triangle -}

calcHypotenuse :: (Float, Float) -> Float
calcHypotenuse (a, b) = c where
    c = sqrt (a^2 + b^2)

main = do
  putStrLn "Base of the right triangle:"
  a <- getLine
  putStrLn "Height of the right triangle:"
  b <- getLine
  putStrLn $ "The hypotenuse of a right triangle with base " ++ a ++ " and height " ++ b ++ " is: "
  print (calcHypotenuse(read a, read b))
