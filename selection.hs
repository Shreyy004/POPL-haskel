-- Find the minimum element and remove it from the list
selectMin :: Ord a => [a] -> (a, [a])
selectMin [x] = (x, [])
selectMin (x:xs)
  | x <= minRest = (x, xs)
  | otherwise    = (minRest, x:rest)
  where
    (minRest, rest) = selectMin xs

-- Perform selection sort
selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort xs =
  let (minElem, rest) = selectMin xs
  in minElem : selectionSort rest

-- Main function to take input from the user and sort the list
main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]
  putStrLn "Sorted list:"
  print $ selectionSort numbers
