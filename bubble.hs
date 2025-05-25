-- Perform a single pass of bubble sort, bubbling the largest element to the end
bubble :: Ord a => [a] -> [a]
bubble []       = []
bubble [x]      = [x]
bubble (x:y:xs)
  | x > y     = y : bubble (x:xs)
  | otherwise = x : bubble (y:xs)

-- Perform Bubble Sort
bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort xs = bubbleSort (init (bubble xs)) ++ [last (bubble xs)]


-- Main function to get input from the user and sort it
main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]
  putStrLn "Sorted list:"
  print $ bubbleSort numbers
