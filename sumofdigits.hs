sumDigits :: Int -> Int
sumDigits 0 = 0   -- Base case: when the number is 0, the sum of digits is 0
sumDigits n = n `mod` 10 + sumDigits (n `div` 10)  -- Recursive case: add last digit and recurse
