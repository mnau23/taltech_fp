{- Write a program in Haskell which produces output of OR gate using typeclass -}

orGate:: Bool -> Bool -> Bool
orGate True True = True
orGate False True = True
orGate True False = True
orGate _ _ = False

main = do
    print(orGate True True)
