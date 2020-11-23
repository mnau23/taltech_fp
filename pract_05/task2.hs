{- Write a program in Haskell where it can find 
   the position of 1 in a binary sequence. -}

positions :: Eq l => l -> [l] -> [Int]
positions x xs =
    [i | (x',i) <- zip xs[0..n], x == x']
    where n = length xs - 1

main = do
    putStrLn "\nWrite a binary sequence:"
    seq <- getLine
    let list = map read (words seq) :: [Int]
    putStrLn $ "The positions of 1 in the given sequence are: " ++ show (positions 1 list) ++ "\n"
    -- example sequence: 1 0 1 1 1 0 1 1 1 0 1
