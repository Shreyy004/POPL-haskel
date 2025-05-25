-- Convert binary to decimal
binaryToDecimal :: String -> Int
binaryToDecimal [] = 0
binaryToDecimal binary = helper (reverse binary) 0
  where
    helper [] _ = 0
    helper (x:xs) pos
      | x == '1'  = 2^pos + helper xs (pos + 1)
      | otherwise = helper xs (pos + 1)

-- Convert decimal to octal
decimalToOctal :: Int -> String
decimalToOctal 0 = "0"
decimalToOctal n = reverse (helper n)
  where
    helper 0 = []
    helper x = let (q, r) = x `divMod` 8 in show r : helper q

-- Convert decimal to hexadecimal
decimalToHexadecimal :: Int -> String
decimalToHexadecimal 0 = "0"
decimalToHexadecimal n = reverse (helper n)
  where
    helper 0 = []
    helper x =
      let (q, r) = x `divMod` 16
          hexChar = if r < 10 then show r else [toEnum (r + 55)]
       in hexChar : helper q

-- Convert binary directly to octal
binaryToOctal :: String -> String
binaryToOctal binary = decimalToOctal (binaryToDecimal binary)

-- Convert binary directly to hexadecimal
binaryToHexadecimal :: String -> String
binaryToHexadecimal binary = decimalToHexadecimal (binaryToDecimal binary)

main :: IO ()
main = do
    let binaryNumber = "1011" -- Example binary number
    let decimalNumber = binaryToDecimal binaryNumber
    let octalNumber = binaryToOctal binaryNumber
    let hexadecimalNumber = binaryToHexadecimal binaryNumber

    putStrLn $ "Binary: " ++ binaryNumber
    putStrLn $ "Decimal: " ++ show decimalNumber
    putStrLn $ "Octal: " ++ octalNumber
    putStrLn $ "Hexadecimal: " ++ hexadecimalNumber
