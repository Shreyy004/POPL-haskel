main::IO()
main=do
 putStrLn("Enter a lowercase character:")
 x<-getLine
 if head x<'a' || head x>'z' then print("Invalid")
 else do
  let y=head x
  print(toEnum(fromEnum y -32)::Char)
  print(fromEnum y)