{- write a program in Haskell that finds the Fibonacci sequence until a given number using recursion -}

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci(x-1) + fibonacci(x-2)

main = do
    putStrLn "Give me a number:"
    n <- getLine
    putStrLn $ "Fibonacci result for " ++ n ++ " is:"
    print (fibonacci(read n))
