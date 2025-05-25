str2Float x = read x ::Double

main = do
 putStrLn ("Enter Principal Amount: ")
 p<-getLine
 let p1 = str2Float p
 putStrLn ("Enter Rate: ")
 r<-getLine
 let r1 = str2Float r
 putStrLn ("Enter Time: ")
 t<-getLine
 let t1 = str2Float t
 putStr("Interest = ")
 print((p1*r1*t1)/100)