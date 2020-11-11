{- write a program in Haskell that determines if a string is palindrome or not -}

isPalindrome :: String -> Bool
isPalindrome [] = False
isPalindrome [a] = True
isPalindrome [a,b] = a == b
isPalindrome w = (head w == last w) && isPalindrome middle where
    middle = (init.tail) w

main = do
    putStrLn "\nWrite a word:"
    word <- getLine
    putStrLn $ "\nThe reverse of the word is: " ++ reverse word ++ "."
    if(isPalindrome word)
        then putStrLn $ "\nThe word " ++ word ++ " is a palindrome.\n"
    else putStrLn $ "\nThe word " ++ word ++ " is not a palindrome.\n"
