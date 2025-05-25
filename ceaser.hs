import Data.Char (chr, ord, isLower, isUpper)

-- Encrypt a single character using Caesar Cipher
encryptChar :: Int -> Char -> Char
encryptChar shift c
  | isLower c = chr (((ord c - ord 'a' + shift) `mod` 26) + ord 'a')
  | isUpper c = chr (((ord c - ord 'A' + shift) `mod` 26) + ord 'A')
  | otherwise = c -- Non-alphabet characters remain unchanged

-- Decrypt a single character using Caesar Cipher
decryptChar :: Int -> Char -> Char
decryptChar shift c = encryptChar (-shift) c

-- Encrypt a string
encrypt :: Int -> String -> String
encrypt shift = map (encryptChar shift)

-- Decrypt a string
decrypt :: Int -> String -> String
decrypt shift = map (decryptChar shift)

-- Main function to take input from the user and demonstrate encryption/decryption
main :: IO ()
main = do
  putStrLn "Enter the text to encrypt:"
  text <- getLine
  putStrLn "Enter the shift value (integer):"
  shiftInput <- getLine
  let shift = read shiftInput :: Int
  let encrypted = encrypt shift text
  let decrypted = decrypt shift encrypted
  putStrLn $ "Encrypted text: " ++ encrypted
  putStrLn $ "Decrypted text: " ++ decrypted
