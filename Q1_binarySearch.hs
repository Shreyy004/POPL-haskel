-- Function for binary search
binarySearch :: [Int] -> Int -> Maybe Int
binarySearch list target = binarySearchHelper list target 0 (length list - 1)

binarySearchHelper :: [Int] -> Int -> Int -> Int -> Maybe Int
binarySearchHelper list target low high
    | low > high = Nothing
    | midElement == target = Just mid
    | midElement < target = binarySearchHelper list target (mid + 1) high
    | otherwise = binarySearchHelper list target low (mid - 1)
  where
    mid = (low + high) `div` 2
    midElement = list !! mid

main :: IO ()
main = do
    print $ binarySearch [1, 3, 5, 7, 9] 7
    print $ binarySearch [1, 3, 5, 7, 9] 4

