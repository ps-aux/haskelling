-- 1
myLast :: [a] -> a
myLast ([x]) = x
myLast (_:xs) = myLast xs


-- 2
myButLast :: [a] -> a
myButLast (x:[_]) = x
myButLast (x:xs) = myButLast xs

-- 3
elementAt :: (Num i) => [a] -> i -> a
