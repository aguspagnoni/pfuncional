twice2 = \f -> (\x -> f (f x))
flip2 = \f -> (\x -> (\y -> f (y x)))
inc2 = \x -> x + 1
