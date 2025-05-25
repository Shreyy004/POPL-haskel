-- Function to reverse the digits of a number using recursion
reverseNumber :: Int -> Int
reverseNumber n = reverseHelper n 0  -- Helper function to accumulate the reversed number

-- Helper function with an accumulator to store the reversed number
reverseHelper :: Int -> Int -> Int
reverseHelper 0 reversed = reversed  -- Base case: when n is 0, return the accumulated reversed number
reverseHelper n reversed = reverseHelper (n `div` 10) (reversed * 10 + n `mod` 10)  -- Recursively reverse the digits
