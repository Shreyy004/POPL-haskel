-- Convert decimal to binary
decimalToBinary :: Int -> String
decimalToBinary 0 = "0"
decimalToBinary n = reverse (helper n)
  where
    helper 0 = []
    helper x = let (q, r) = x `divMod` 2 in show r : helper q

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

main :: IO ()
main = do
    let decimalNumber = 255
    putStrLn $ "Decimal: " ++ show decimalNumber
    putStrLn $ "Binary: " ++ decimalToBinary decimalNumber
    putStrLn $ "Octal: " ++ decimalToOctal decimalNumber
    putStrLn $ "Hexadecimal: " ++ decimalToHexadecimal decimalNumber
