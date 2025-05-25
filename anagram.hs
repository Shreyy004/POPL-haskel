-- Function to count the frequency of characters in a string
charFrequency :: String -> [(Char, Int)]
charFrequency [] = []
charFrequency (x:xs) = (x, count x (x:xs)) : charFrequency (remove x xs)
  where
    count char = length . takeWhile (== char)
    remove _ [] = []
    remove char (y:ys)
      | char == y = ys
      | otherwise = y : remove char ys

-- Function to check if two strings are anagrams
isAnagram :: String -> String -> Bool
isAnagram s1 s2 = charFrequency s1 == charFrequency s2

-- Function to find all pairs of anagrams
findAnagramPairs :: [String] -> [(String, String)]
findAnagramPairs [] = []
findAnagramPairs (x:xs) = [(x, y) | y <- xs, isAnagram x y] ++ findAnagramPairs xs

-- Main function to test with a sample list
main :: IO ()
main = do
  let L = ["rama", "ram", "amar", "xox", "oxx"]
  print (findAnagramPairs L)
