triads :: Int -> [(Int,Int,Int)]
triads n = [(x,y,z) | x <- [1..n], y <- [1..n],z <- [1..n], x*x+y*y==z*z]
