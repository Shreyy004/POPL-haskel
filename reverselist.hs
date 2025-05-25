-- Function to reverse a list of integers using recursion
reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList (x:xs) = reverseList xs : [x]
