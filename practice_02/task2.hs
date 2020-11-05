{- write a program with guards in Haskell that can provide a grade -}

giveGrade :: Float -> String
giveGrade points
    | points < 50 = "It is a fail."
    | points >= 50 && points <= 59 = "Grade is C."
    | points >= 60 && points <= 69 = "Grade is B."
    | points >= 70 && points <= 79 = "Grade is A."
    | points >= 80 && points <= 90 = "Grade is A+."
    | otherwise = "Error. Points exceed the limit."

main = do
    putStrLn "How many points?"
    p <- readLn
    print(giveGrade(p))
