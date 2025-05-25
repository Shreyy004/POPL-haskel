flip1 :: (a->b->c)->(b->a->c)
flip1 f = g
 where g x y = f y x
