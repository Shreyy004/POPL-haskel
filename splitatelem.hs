splitatelem::(Eq a)=>a->[a]->([a],[a])
splitatelem _ []=([],[])
splitatelem e (x:xs)
    |x==e=([],x:xs)
    |otherwise=let (first,second)=splitatelem e xs 
               in (x:first,second)