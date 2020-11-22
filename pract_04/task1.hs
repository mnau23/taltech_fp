{- We have two triangles, where the bases of the triangles are 5cm and 3cm,
   heights of the triangles are 3cm and 7cm respectively.
   Find the areas of two triangles using lambdas. -}

main = do
    -- (a,b) = (base,height)
    let measures = [(5,3), (3,7)]
    let areas = map (\(a,b) -> (a*b)/2) measures
    putStrLn "The area of the first triangle is:"
    print (head areas)
    putStrLn "The area of the second triangle is:"
    print (last areas)
