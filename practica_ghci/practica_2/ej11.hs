smaller (x,y,z) | x <= y && x <= z = x
                | y <= x && y <= z = y
                | z <= x && z <= y = z

smaller2 :: (Int, Int, Int) -> Int
smaller2 = \(x, y, z) -> min x (min y z)

second x = \x -> x
second2 = \x -> \y -> y

andThen True y = y
andThen False y = False

andThen2 = \x -> if x == True then \y -> y 
                else \y -> False
