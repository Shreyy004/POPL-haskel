-- Function to check if a number is prime
isPrime :: Int -> Bool
isPrime n
  | n <= 1    = False
  | n == 2    = True
  | even n    = False
  | otherwise = checkDivisibility n 3
  where
    checkDivisibility n d
      | d * d > n  = True  -- If d exceeds sqrt(n), n is prime
      | n `mod` d == 0 = False  -- If divisible, not prime
      | otherwise = checkDivisibility n (d + 2)

-- Quick Sort function using filter
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerSorted = quicksort (filter (<= x) xs)
        biggerSorted = quicksort (filter (> x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

-- Main function to check if the middle element of the sorted list is prime
main :: IO ()
main = do
    let unsortedList = [5, 3, 8, 6, 2, 7, 4, 1]  -- Example list
    let sortedList = quicksort unsortedList       -- Sort the list
    let middleIndex = length sortedList `div` 2   -- Find the index of the middle element
    let middleElement = sortedList !! middleIndex -- Get the middle element
    putStrLn $ "Unsorted List: " ++ show unsortedList
    putStrLn $ "Sorted List: " ++ show sortedList
    putStrLn $ "Middle element: " ++ show middleElement
    putStrLn $ "Is the middle element prime? " ++ show (isPrime middleElement)
