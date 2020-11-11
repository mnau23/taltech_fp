{- write a program in Haskell to find if a number is divisible by 5 or not and will write in a file either
   "divisible by 5" when divisible by 5 or "not divisible by 5" otherwise. -}

main = do
    putStrLn "Give me a number:"
    n <- readLn
    let file = "result.txt"
    if (mod n 5 == 0)
        then writeFile file "Divisible by 5."
    else writeFile file  "Not divisible by 5."
    contents <- readFile file
    putStrLn contents
