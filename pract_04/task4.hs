{- Suppose we have three sets of fruits.
   Write a program to concat three sets into one using monoids. -}

module FruitsList where
data Fruits =
    SetA {elem :: [String]}
  | SetB {elem :: [String]}
  | SetC {elem :: [String]}
  | FruitsList {elem :: [String]}
  deriving (Eq, Show)

instance Semigroup Fruits where
  (SetA elem) <> (SetB elem') = FruitsList (elem <> elem')
  (FruitsList elem) <> (SetC elem') = FruitsList (elem <> elem')

setA :: Fruits
setA = SetA ["Mango", "Melon", "Apple"]

setB :: Fruits
setB = SetB ["Berry", "Banana", "Kiwi", "Pineapple"]

setC :: Fruits
setC = SetC ["Grapes", "Orange"]

setAB :: Fruits
setAB = setA <> setB
