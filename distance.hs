str2Int x = read x::Int
main=do
  putStrLn("Enter distance")
  d<-getLine
  let di = str2Int d
  putStr("Distance in meter=")
  print(di*1000)