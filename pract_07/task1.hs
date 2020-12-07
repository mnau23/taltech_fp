{- Write a program in Haskell using Filter where there is a list
   of years from 1990 until the current year. Find out the first
   year in the list which is a leap year. -}

leapYear :: Integer
leapYear = head (filter p [1990..2020])
    where p x = (mod x 400 == 0 || (mod x 4 == 0 && mod x 100 /= 0))

main = do
    putStrLn $ "The first year in the list which is a leap year is: " ++ show(leapYear)
