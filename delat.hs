delat::Int->[a]->[a]
delat 0 (_:xs)=xs
delat k (x:xs)=x:delat (k-1) xs