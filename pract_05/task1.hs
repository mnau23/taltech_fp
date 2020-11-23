{- Write a program in Haskell where we can take four letters
   by pressing enter and then it will print the sequence. -}

readLetters :: IO (Char, Char, Char, Char)
readLetters = do
    putStrLn "\nEnter four letters (press enter):"
    x <- getChar
    getChar
    y <- getChar
    getChar
    z <- getChar
    getChar
    w <- getChar
    return (x, y, z, w)
