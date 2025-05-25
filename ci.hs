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
 putStrLn ("Enter n: ")
 n<-getLine
 let n1 = str2Float n
 putStr("Interest = ")
 print((p1*(1+(r1/n1))**(n1*t1))-p1)
 