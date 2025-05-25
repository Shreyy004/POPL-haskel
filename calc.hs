str2Float x = read x ::Float
str2Int x = read x ::Int

add(x,y)=(x+y)
diff(x,y)=(x-y)
pro(x,y)=(x*y)
divi(x,y)=(x/y)
modu (x,y)=(mod x y)

main = do
 putStrLn ("Enter num1")
 n1<-getLine
 let num1 = str2Float n1
 let n11 = str2Int n1
 
 
 putStrLn ("Enter num2")
 n2<-getLine
 let num2 = str2Float n2
 let n22 = str2Int n2
 
 putStrLn ("Sum: ")
 print(add(n11,n22))
 putStrLn ("Difference: ")
 print(diff(num1,num2))
 putStrLn ("Product: ")
 print(pro(num1,num2))
 putStrLn ("Quotient: ")
 print(divi(num1,num2))
 putStrLn ("Reminder: ")
 print(modu(n11,n22))
 