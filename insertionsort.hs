-- Insert an element into the sorted part of the list
insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys)
  | x <= y    = x : y : ys
  | otherwise = y : insert x ys

-- Insertion Sort function
insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)

-- Main function to get input from the user and sort it
main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]
  putStrLn "Sorted list:"
  print $ insertionSort numbers
