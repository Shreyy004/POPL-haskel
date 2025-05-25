-- Function to find the longest sublist of consecutive integers
longestConsecutive :: [Int] -> [Int]
longestConsecutive [] = [] -- Base case: empty list
longestConsecutive xs = findLongest (groupConsecutive (removeDuplicatesAndSort xs))

-- Helper function: Remove duplicates and sort the list
removeDuplicatesAndSort :: [Int] -> [Int]
removeDuplicatesAndSort [] = []
removeDuplicatesAndSort (x:xs)
    | x `elem` xs = removeDuplicatesAndSort xs -- Skip duplicates
    | otherwise = x : removeDuplicatesAndSort [y | y <- xs, y >= x] -- Keep unique value, ensure sorting

-- Helper function: Group consecutive numbers into sublists
groupConsecutive :: [Int] -> [[Int]]
groupConsecutive [] = []
groupConsecutive (x:xs) = buildGroup [x] xs
  where
    buildGroup current [] = [current] -- Final group
    buildGroup current (y:ys)
        | y == last current + 1 = buildGroup (current ++ [y]) ys -- Add if consecutive
        | otherwise = current : buildGroup [y] ys -- Start new group

-- Helper function: Find the longest sublist
findLongest :: [[Int]] -> [Int]
findLongest [] = [] -- Base case
findLongest [x] = x -- Single group is the longest
findLongest (x:xs)
    | length x >= length longestTail = x -- If current group is longer, use it
    | otherwise = longestTail -- Otherwise, keep the longer group from the tail
  where
    longestTail = findLongest xs -- Recursive call to process the rest

-- Example usage
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    let result = longestConsecutive numbers
    putStrLn $ "The longest sublist of consecutive integers is: " ++ show result
