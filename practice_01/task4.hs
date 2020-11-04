{- write a programm in Haskell that finds a year leap year or not -}

isLeapYear :: Int -> String
isLeapYear y =
    if (y `mod` 400 == 0 || (y `mod` 4 == 0 && y `mod` 100 /= 0))
        then (show y) ++ " is a leap year."
    else (show y) ++ " is not a leap year."

main = do
    print(isLeapYear 2020)
