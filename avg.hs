import Data.List (words)
main::IO()
main=do
 putStrLn("Enter the marks of the 5 subject")
 l<-getLine
 let xs=map read (words l)::[Int]
 let s=sum xs
 putStr("Average = ")
 print(fromIntegral s/5)