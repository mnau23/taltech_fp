{- write a program in Haskell that finds an integer number either odd or even -}

findNumber :: Int -> String
findNumber x =
    if x `mod` 2 == 0
        then "This is an even number."
    else "This is an odd number."

main = do
    print(findNumber 10)
