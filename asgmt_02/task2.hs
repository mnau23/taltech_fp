{- Write a program in Haskell to input electricity unit charge and
   calculate the total electricity bill according to the given condition:
   - for first 50 units 0.50 $/unit
   - for next 100 units 0.75 $/unit
   - for next 100 units 1.20 $/unit
   - for unit above 250 1.50 $/unit
   An additional surcharge of 20% is added to the bill. -}

-- this function calculates the bill according to the different options, using guards
elecCharge :: Float -> Float
elecCharge units
         | units <= 50 = 0.50*units
         | units > 50 && units <= 150 = 0.50*50 + 0.75*(units-50)
         | units > 150 && units <= 250 = 0.50*50 + 0.75*100 + 1.2*(units-150)
         | units > 250 = 0.50*50 + 0.75*100 + 1.2*100 + 1.5*(units-250)
         | otherwise = 0

main = do
   putStrLn "What is the electricity unit charge?"
   e <- readLn
   if(e<0)
      then putStrLn "The unit charge is less than 0. Error."
   else if(e==0)
      then putStrLn "The unit charge is equal to 0. Error."
   else do
      let net_bill = elecCharge e
      putStrLn $ "The net electricity bill is: " ++ show(net_bill)
      let total_bill = net_bill + net_bill*0.2
      putStrLn $ "The total electricity bill is: " ++ show(total_bill)
