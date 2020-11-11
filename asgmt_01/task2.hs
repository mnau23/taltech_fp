{- write a Haskell program to remove the duplicates from a given list of integers -}

-- if x==y, then do recursively this function with x and ys (ys is the list without the y element, the first one)
-- otherwise keep y and do recursively this function with x and ys
remove :: Int -> [Int] -> [Int]
remove x [] = []
remove x (y:ys)
    | x==y = remove x ys
    | otherwise = y:(remove x ys)

-- if the list is empty, then return an empty list
-- otherwise return the first element + the rest of the list with removed duplicates
remDups :: [Int] -> [Int]
remDups [] = []
remDups (x:xs) = x: (remDups (remove x xs))

main = do
    putStrLn "\nWrite a set of integers numbers:"
    nums <- getLine
    -- "map F X" is the list obtained by applying F to each element of X
    let list = map read (words nums) :: [Int]
    putStrLn $ "\nThe input list: " ++ show list
    putStrLn $ "\nThe list without duplicates: " ++ show (remDups list) ++ "\n"
