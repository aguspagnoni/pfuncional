fix f x = f (fix f) x
fork (f,g) x = (f x,g x)
apply f x = f x
curry f x y = f (x,y)
