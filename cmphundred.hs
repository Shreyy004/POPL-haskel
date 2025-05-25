cmpr ::(Ord a,Num a)=>a->String
cmpr n
 |n==100="equal to 100"
 |n>100="greater than 100"
 |otherwise="less than 100"

cmpr1::(Num a,Ord a)=>a->Ordering
cmpr1 =compare 100