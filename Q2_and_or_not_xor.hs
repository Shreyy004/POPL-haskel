-- Logical operations
logicalAnd :: Bool -> Bool -> Bool
logicalAnd x y = x && y

logicalOr :: Bool -> Bool -> Bool
logicalOr x y = x || y

logicalNot :: Bool -> Bool
logicalNot x = not x

logicalXor :: Bool -> Bool -> Bool
logicalXor x y = (x || y) && not (x && y)

-- Calculator
logicalCalculator :: String -> Bool -> Bool -> Bool
logicalCalculator operation x y =
    if operation == "AND" then logicalAnd x y
    else if operation == "OR" then logicalOr x y
    else if operation == "XOR" then logicalXor x y
    else error "Invalid operation"

main :: IO ()
main = do
    print $ logicalCalculator "AND" True False
    print $ logicalCalculator "OR" True False
    print $ logicalCalculator "XOR" True True

