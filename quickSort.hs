quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerSorted = quicksort (filter (<= x) xs)
        biggerSorted = quicksort (filter (> x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

main :: IO ()
main = do
    let unsortedList = [5, 3, 8, 6, 2, 7, 4, 1]
    let sortedList = quicksort unsortedList
    putStrLn $ "Unsorted List: " ++ show unsortedList
    putStrLn $ "Sorted List: " ++ show sortedList

