--normal recursion
myLast :: [a] -> a
myLast [] = error "Can't get last element on an empty list, dummy!"
myLast [x] = x
myLast (_:x) = myLast x
