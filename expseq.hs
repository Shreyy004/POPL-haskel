-- Function to generate the sequence
exponentiationSequence :: Int -> [Int]
exponentiationSequence n 
    | n > 1000  = [] -- Base case: Stop if the term exceeds 1000
    | even n     = n : exponentiationSequence (n * n) -- If current term is even, square it
    | otherwise  = n : exponentiationSequence (n * n * n) -- If current term is odd, cube it

-- Main function to take input and display the sequence
main :: IO ()
main = do
    putStrLn "Enter a natural number to generate the sequence:"
    input <- getLine
    let number = read input :: Int
    if number <= 0
        then putStrLn "Please enter a natural number (greater than 0)."
        else print $ exponentiationSequence number
