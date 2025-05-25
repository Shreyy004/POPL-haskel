countz ::Int->Int->Int
countz x n=countdigi x 0

countdigi:Int->Int->Int
countdigi x n=if x>=1 then countdigi x/10 n+1 else n