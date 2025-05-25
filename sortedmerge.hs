sortedmerge :: (Ord a) => [a] -> [a] -> [a]
sortedmerge xs [] = xs
sortedmerge [] ys = ys
sortedmerge (x:a) (y:b)
  | x < y     = x : sortedmerge a (y:b)
  | x == y    = y : sortedmerge a b
  | x > y     = y : sortedmerge (x:a) b
