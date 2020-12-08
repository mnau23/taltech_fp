{- Write a program in Haskell which calculates the
   sum of all odd numbers in a given range. -}

-- this function removes all the even numbers in a list
remEven :: [Int] -> [Int]
remEven list = [ x | x <- list, x `mod` 2 /= 0]

-- this function calculates recursively the sum of all elements in a list
sumElem :: [Int] -> Int
sumElem [] = 0
sumElem (x:xs) = x + sumElem xs

main = do
   putStrLn "\nLower bound of the range:"
   x <- readLn
   putStrLn "Upper bound of the range:"
   y <- readLn
   let r = [x..y]
   putStrLn $ "\nThe range is: " ++ show(r)
   let oddNums = remEven r
   putStrLn $ "The odd numbers in this range are: " ++ show(oddNums)
   let sum = sumElem oddNums
   putStrLn $ "The sum of the odd numbers is: " ++ show(sum) ++ ".\n"
