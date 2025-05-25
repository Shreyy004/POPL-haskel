-- Function to rotate 'a' to 'b', 'b' to 'c', and 'c' to 'a'
rotabc :: String -> String
rotabc [] = []
rotabc (x:xs)
  | x == 'a'  = 'b' : rotabc xs
  | x == 'b'  = 'c' : rotabc xs
  | x == 'c'  = 'a' : rotabc xs
  | otherwise = x : rotabc xs

-- Main function to test the rotabc
main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  putStrLn "Result after applying rotabc:"
  putStrLn $ rotabc input
