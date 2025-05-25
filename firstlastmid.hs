-- Function to calculate the first, middle, and last elements
firstMiddleLast :: [a] -> (a, a, a)
firstMiddleLast [] = error "The list is empty"  -- Handle empty list
firstMiddleLast [x] = (x, x, x)                -- Single element case
firstMiddleLast xs = (first xs, middle xs, last xs)
  where
    -- Find the first element
    first (x:_) = x

    -- Find the last element
    last [x] = x
    last (_:xs) = last xs

    -- Find the middle element
    middle xs = takeMiddle xs (countElements xs `div` 2)
    
    -- Count the number of elements in the list
    countElements [] = 0
    countElements (_:xs) = 1 + countElements xs

    -- Take the middle element
    takeMiddle (x:_) 0 = x
    takeMiddle (_:xs) n = takeMiddle xs (n - 1)

-- Main function to test firstMiddleLast
main :: IO ()
main = do
  putStrLn "Enter a list of elements (space-separated):"
  input <- getLine
  let elements = words input  -- Split input into a list
  if null elements
    then putStrLn "The list is empty. No result."
    else let (f, m, l) = firstMiddleLast elements
         in putStrLn $ "First: " ++ f ++ ", Middle: " ++ m ++ ", Last: " ++ l
