filter1 :: (a -> Bool) -> [a] -> [a]
filter1 p [] = []
filter1 p (x:xs) = if p x then x:filter1 p xs else filter1 p xs
