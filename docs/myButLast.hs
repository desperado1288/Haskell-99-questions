--
myButLast :: [a] -> a
myButLast [] = error "Empty list!"
myButLast [x] = error "Can't get last but one on a single-element list!"
myButLast (x:xs) =
        if length xs == 1 then x
        else myButLast xs

myButLast' [] = error "Empty list!"
myButLast' [x] = error "Can't get last but one on a single-element list!"
myButLast' [x,_] = x
myButLast' (_:xs) = myButLast' xs

myButLast'' x = reverse x !! 1

myButLast''' = head . tail . reverse

myButLast'''' (x:_:[]) = x
myButLast'''' (_:xs) = myButLast'''' xs

--foldl
lastbut1 :: Foldable f => f a -> a
lastbut1 = fst . foldl (\(a,b) x -> (b,x)) (err1,err2)
  where
    err1 = error "lastbut1: Empty list"
    err2 = error "lastbut1: Singleton"

lastbut1safe :: Foldable f => f a -> Maybe a
lastbut1safe = fst . foldl (\(a,b) x -> (b,Just x)) (Nothing,Nothing)


