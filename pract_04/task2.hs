{- Use folds to create the list of squares of some numbers. -}

-- if the list is empty, then it returns an empty list
-- otherwise it calculates the square of the first element
-- concatenated with the recursive result of the rest of the list (xs)
calcSquares :: [Int] -> [Int]
calcSquares [] = []
calcSquares (x:xs) = x^2:(calcSquares xs)

main = do
    putStrLn "\nWrite a set of integers numbers:"
    nums <- getLine
    let list = map read (words nums) :: [Int]
    putStrLn $ "\nThe input list: " ++ show list
    putStrLn $ "\nThe squares of the input list: " ++ show (calcSquares list) ++ "\n"
