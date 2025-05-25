zip1 :: [a] -> [b] -> [(a,b)]
zip1 (x:xs) (y:ys) = (x,y): zip1 xs ys
zip1 _ _ = []
