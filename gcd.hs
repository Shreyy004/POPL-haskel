-- Function to compute GCD using Euclid's algorithm
gcd' :: Int -> Int -> Int
gcd' a 0 = a
gcd' a b = gcd' b (a `mod` b)

-- Main function to take input from the user and compute the GCD
main :: IO ()
main = do
  putStrLn "Enter the first number:"
  input1 <- getLine
  putStrLn "Enter the second number:"
  input2 <- getLine
  let num1 = read input1 :: Int
      num2 = read input2 :: Int
  putStrLn $ "The GCD of " ++ show num1 ++ " and " ++ show num2 ++ " is: " ++ show (gcd' num1 num2)
