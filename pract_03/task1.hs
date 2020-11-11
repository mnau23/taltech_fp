{- write a program based on Map module in Haskell, which produces the following output:
   [(1,[4]) ,(2,[8]), (3,[12]), (4,[16])] -}

import Data.Map (Map)
import qualified Data.Map as Map

myMap :: Integer -> Map Integer [Integer]
myMap n = Map.fromList (map makePair [1 .. n]) where
    makePair x = (x, [x * 4])

main = do
  putStrLn "Output:"
  print (myMap 4)
