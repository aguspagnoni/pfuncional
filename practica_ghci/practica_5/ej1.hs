import Data.Char(ord)

sum2 :: [Int] -> Int
sum2 [] = 0
sum2 (x:xs) = x + sum2 xs

any2 :: [Bool] -> Bool
any2 [] = False
any2 (x:xs) = x || any2 xs

all2 :: [Bool] -> Bool
all2 [] = True
all2 (x:xs) = x && all2 xs

codes2 :: [Char] -> [Int]
codes2 [] = []
codes2 (x:xs) = ord x : codes2 xs

remainder2 :: [Int] -> Int -> [Int]
remainder2 [] y = []
remainder2 (x:xs) y = x `mod` y : remainder2 xs y

lengths2 :: [[a]] -> [Int]
lengths2 [] = []
lengths2 (x:xs) = length x : lengths2 xs

pairs2 :: [Int] -> [Int]
pairs2 [] = []
pairs2 (x:xs) = if x `mod` 2 == 0 then x : pairs2 xs else pairs2 xs

squares2 :: [Int] :: [Int]
squares2 [] = []
squares2 (x:xs) = x^2 : squares2 xs
