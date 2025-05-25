-- Function to calculate the power of a number using recursion
power :: Double -> Int -> Double
power _ 0 = 1                      -- Base case: any number to the power of 0 is 1
power x n
    | n > 0     = x * power x (n - 1)   -- Recursive case: positive exponent
    | otherwise = 1 / power x (-n)      -- Handle negative exponent, take absolute value of n
