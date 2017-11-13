-- 1
myLast :: [a] -> a
myLast ([x]) = x
myLast (_:xs) = myLast xs


-- 2
myButLast :: [a] -> a
myButLast (x:[_]) = x
myButLast (x:xs) = myButLast xs

-- 3
arr =  [ 1 .. 20]
elementAt :: [a] -> Int -> a
elementAt ls k =
    if k > length ls
        then error "Index out of bounds"
        else loop ls k
    where loop (x:xs) acc =
            if acc == 1
                then x
                else loop xs $ acc - 1