{- Write a program in Haskell using Sections where input is a number
   and the output is the multiplication of that number with 5 -}

multiply :: (Floating a) => a -> a
multiply = (*5)

main = do
    putStrLn "\nGive me a number:"
    x <- readLn
    putStrLn $ "\nThe result is: " ++ show(multiply x)
