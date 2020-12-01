{- Write a program which declares a data type named Box in Haskell
   for finding the surface area and volume of a box -}

data Box = Box Float Float Float

area :: Box -> Float
area (Box l w d) = 2*(l*w) + 2*(l*d) + 2*(w*d)

volume :: Box -> Float
volume (Box l w d) = l*w*d

main = do
    putStrLn "Length of the box:"
    in_1 <- getLine
    let length = read in_1 :: Float
    putStrLn "Width of the box:"
    in_2 <- getLine
    let width = read in_2 :: Float
    putStrLn "Depth of the box:"
    in_3 <- getLine
    let depth = read in_3 :: Float
    let box = Box length width depth
    putStrLn $ "The area of the box is: " ++ show (area box)
    putStrLn $ "The volume of the box is: " ++ show (volume box)
