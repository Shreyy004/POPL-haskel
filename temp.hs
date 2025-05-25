int2Double x = read x::Double
main=do
  putStrLn("Enter temperature in Farenheit")
  t<-getLine
  let tc = int2Double t
  putStr("Temperature in Celsius=")
  print((tc-32)*5/9)