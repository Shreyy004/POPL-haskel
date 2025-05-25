myFilterFunction :: (Int -> Bool) -> (Int -> Int) -> [Int] -> [Int]
myFilterFunction predicate func = map (\x -> if predicate x then func x else x)
