str2Float x = read x ::Double

main = do
 putStrLn ("Enter Radius: ")
 r<-getLine
 let r1 = str2Float r
 putStr("Area = ")
 print(4*pi*r1*r1)
 putStr("Volume = ")
 print(4/3*pi*r1*r1*r1)
 