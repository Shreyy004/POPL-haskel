deleAt::[a]->Int->[a]
deleAt [] pos=[]
deleAt (x:xs) 0=xs
deleAt (x:xs) pos= x:deleAt xs (pos-1)