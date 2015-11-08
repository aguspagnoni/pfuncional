hs :: [String] -> Int
hs = foldr (\x y -> if (x !! 0 == 'H' || x !! 0 == 'h') then y + 1 else y) 0

filter2 f y = concat (map (\x -> if (f x) then [x] else []) y)

takewhile f x = takewhile2 f x [] []

takewhile2 f [] m a = m
takewhile2 f (x:xs) m a = if f x then 
                            (if length a == length m then 
                                takewhile2 f xs (x:a) (x:a) 
                                else takewhile2 f xs m (x:a)) 
                                    else takewhile2 f xs m [] 

dropwhile f [] = []
dropwhile f (x:xs) = if f x then dropwhile f xs else (x:xs)

takewhileb f [] = []
takewhileb f (x:xs) = if f x then (x:takewhileb f xs) else []
