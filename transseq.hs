-- Function to generate the transformation sequence
transformationSequence :: Int -> [Int]
transformationSequence n
  | n <= 1    = [n] -- Stop when the term is ≤ 1
  | n `mod` 3 == 0 = n : transformationSequence (floor (sqrt (fromIntegral n))) -- If divisible by 3, take square root (integer part)
  | otherwise = n : transformationSequence (n * 2) -- If not divisible by 3, multiply by 2

-- Main function to get user input and print the result
main :: IO ()
main = do
    putStrLn "Enter a natural number:"
    input <- getLine
    let number = read input :: Int
    let result = transformationSequence number
    putStrLn $ "The transformation sequence is: " ++ show result
