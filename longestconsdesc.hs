-- Function to find the longest sublist of consecutive integers in descending order
longestConsecutiveDescending :: [Int] -> [Int]
longestConsecutiveDescending [] = [] -- Base case: empty list
longestConsecutiveDescending xs = findLongest (groupConsecutiveDescending (removeDuplicatesAndSortDescending xs))

-- Helper function: Remove duplicates and sort the list in descending order
removeDuplicatesAndSortDescending :: [Int] -> [Int]
removeDuplicatesAndSortDescending [] = []
removeDuplicatesAndSortDescending (x:xs)
    | x `elem` xs = removeDuplicatesAndSortDescending xs -- Skip duplicates
    | otherwise = x : removeDuplicatesAndSortDescending [y | y <- xs, y <= x] -- Keep unique values, ensure descending order

-- Helper function: Group consecutive numbers into sublists in descending order
groupConsecutiveDescending :: [Int] -> [[Int]]
groupConsecutiveDescending [] = []
groupConsecutiveDescending (x:xs) = buildGroup [x] xs
  where
    buildGroup current [] = [current] -- Final group
    buildGroup current (y:ys)
        | y == head current - 1 = buildGroup (current ++ [y]) ys -- Add if consecutive (decreasing by 1)
        | otherwise = current : buildGroup [y] ys -- Start a new group

-- Helper function: Find the longest sublist
findLongest :: [[Int]] -> [Int]
findLongest [] = [] -- Base case: empty list
findLongest [x] = x -- Single group is the longest
findLongest (x:xs)
    | length x >= length longestTail = x -- If current group is longer, use it
    | otherwise = longestTail -- Otherwise, keep the longer group from the tail
  where
    longestTail = findLongest xs -- Recursive call to process the rest

-- Main function to get input and compute the result
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine -- Read user input
    let numbers = map read (words input) :: [Int] -- Convert input to a list of integers
    let result = longestConsecutiveDescending numbers -- Find the longest consecutive descending sublist
    putStrLn $ "The longest sublist of consecutive integers in descending order is: " ++ show result
