square :: Int -> Int
square a = a ^ 2

add :: Int -> Int -> Int
add c d = c + d

sub :: Int -> Int -> Int
sub c d = c - d

mul :: Float -> Float -> Float
mul c d = c * d

divi :: Float -> Float -> Float
divi c d = c / d

main = do
 print (square 5)
 print (add 2 5)
 print (sub 2 5)
 print (mul 2.0 0.7)
 print (divi 6.0 12.0)
