
countDigits :: Int -> Int
countDigits 0 = 0   
countDigits n = 1 + countDigits (n `div` 10)  
