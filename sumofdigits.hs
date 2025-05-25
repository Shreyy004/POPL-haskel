sumOfDigit :: Float -> Integer
sumOfDigit 0 = 0
sumOfDigit n = mod k 10 + sumOfDigit (n / 10)
  where
    k = floor n

sumOfDigitsOfThree :: Float -> Float -> Float -> Integer
sumOfDigitsOfThree a b c = sumOfDigit a + sumOfDigit b + sumOfDigit c
