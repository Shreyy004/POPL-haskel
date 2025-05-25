-- Merge two sorted lists into a single sorted list
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

-- Merge Sort function
mergeSort :: Ord a => [a] -> [a]
mergeSort []  = []
mergeSort [x] = [x]
mergeSort xs  = 
  let mid = length xs `div` 2
      left = take mid xs
      right = drop mid xs
  in merge (mergeSort left) (mergeSort right)

-- Main function to take input from the user and sort it
main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]
  putStrLn "Sorted list:"
  print $ mergeSort numbers


--without built-in

-- Split a list into two halves
split :: [a] -> ([a], [a])
split [] = ([], [])
split [x] = ([x], [])
split (x:y:xs) =
  let (left, right) = split xs
  in (x:left, y:right)

-- Merge two sorted lists into a single sorted list
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

-- Merge Sort function
mergeSort :: Ord a => [a] -> [a]
mergeSort []  = []
mergeSort [x] = [x]
mergeSort xs  =
  let (left, right) = split xs
  in merge (mergeSort left) (mergeSort right)

-- Main function to take input from the user and sort it
main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]
  putStrLn "Sorted list:"
  print $ mergeSort numbers

