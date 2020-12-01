{- Write a program in Haskell which
   represents the tree in the figure -}

data Tree t = Empty | Branch t (Tree t) (Tree t) deriving (Show, Eq)

tree = Branch 'x' (Branch 'y' Empty (Branch 'p' Empty Empty))
                  (Branch 'z' Empty (Branch 'r' Empty Empty))
