--normal recursion
myLast :: [a] -> a
myLast [] = error "Can't get last element on an empty list, dummy!"
myLast [x] = x
myLast (_:x) = myLast x

--function composition, using reverse
myLast :: [a] -> a
myLast = head . reverse

myLast'' :: [a] -> a
myLast'' = foldr1 (flip const)

--the use of id
myLast''' :: [a] -> a
myLast''' = foldr1 (const id)

--convert snd to curry function
myLast'''' :: [a] -> a
myLast'''' = foldr1 (curry snd)

myLast''''' :: [a] -> a
myLast''''' [] = error "Can't get last element on an empty list, dummy!"
myLast''''' x = x !! (length x - 1)
