kele::Int->[a]->a
kele 0 (x:_)=x
kele k (_:xs)=kele (k-1) xs
kele _ []=error "index out of bounds"