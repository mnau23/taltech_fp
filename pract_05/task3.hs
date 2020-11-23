{- Write a program in Haskell which will find out a
   sequence of numbers is in descending order or not. -}

pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

descOrd :: Ord l => [l] -> Bool
descOrd xs =
    and [x >= y | (x,y) <- pairs xs]

main = do
    putStrLn "\nWrite a sequence of numbers:"
    seq <- getLine
    let list = map read (words seq) :: [Int]
    putStr $ "Is the sequence in descending order? " ++ show(descOrd list)
