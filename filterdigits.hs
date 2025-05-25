retainDigits :: [String] -> [String]
retainDigits = map filterDigits
  where
    filterDigits [] = []  -- Base case: empty string returns an empty string
    filterDigits (x:xs)
      | x >= '0' && x <= '9' = x : filterDigits xs  -- Keep digit characters
      | otherwise = filterDigits xs  -- Skip non-digit characters
