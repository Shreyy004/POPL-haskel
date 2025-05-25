insertAt::a->Int->[a]->[a]
insertAt x 0 xs=x:xs
insertAt x pos []=[x]
insertAt x pos (y:ys)=y:insertAt x (pos-1) ys