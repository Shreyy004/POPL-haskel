convert::Int->String
convert x = if mod x 10 == 0 then "multiple" else "not a multiple"

main = do
 x <- getLine
 let num = read x:: Int
 print(convert num)
