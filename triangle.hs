str2Float x = read x ::Double

main = do
 putStrLn ("Enter base: ")
 b<-getLine
 let b1 = str2Float b
 putStrLn ("Enter height: ")
 h<-getLine
 let h1 = str2Float h
 putStr("Area = ")
 print(1/2*b1*h1)