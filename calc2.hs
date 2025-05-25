str2Int x = read x ::Int
str2Float x = read x ::Float
sqr(x)=(x*x)
cube(x)=(x*x*x)
sqrroot(x)=(sqrt x)

main = do
 putStrLn ("Enter number")
 n1<-getLine
 let n11 = str2Int n1
 let n12 = str2Float n1
 
 putStrLn ("Square: ")
 print(sqr(n11))
 putStrLn ("Cube: ")
 print(cube(n11))
 putStrLn ("Square Root")
 print(sqrroot(n12))