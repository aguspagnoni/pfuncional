sub x y = x - y

sum2 f i j 
    | i == j = f i 
    | otherwise = f i + sum2 f (i + 1) j


prime x
    | x == 0 = False
    | x == 1 = False
    | otherwise = prime2 x (x -1)

prime2 x y
    | y == 1 = True
    | x `mod` y == 0 = False
    | otherwise = prime2 x (y-1)

phi x = phi2 x 2

phi2 x y
    | x == 1 = if prime y then y else phi2 x (y+1)
    | prime y == True = phi2 (x-1) (y+1)
    | otherwise = phi2 x (y+1)
