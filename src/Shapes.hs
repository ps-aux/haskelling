module Shapes (
triangle,
square,
rightTriangle,
render
) where

-- Render bit map to a string representation
render :: [[Int]] -> String
render = concatMap toRow


toChar :: Int -> Char
toChar 1 = 'o'
toChar 0 = '.'

toRow :: [Int] -> [Char]
toRow [] = ['\n']
toRow (x:xs) = toChar x:toRow xs

listOf :: a -> Int -> [a]
listOf a n = take n $ repeat a

points = listOf 1
spaces = listOf 0


square :: Int -> [[Int]]
square = shape squareRow

squareRow :: Int -> Int -> [Int]
squareRow _ x = points x


triangle :: Int -> [[Int]]
triangle = shape triangleRow

triangleRow :: Int -> Int -> [Int]
triangleRow row x = points row ++ spaces (x - row)

rightTriangle :: Int -> [[Int]]
rightTriangle = shape ((reverse .) . triangleRow) -- Compose 3 unary functions (trRow is binary)


shape :: (Int -> Int ->  [Int]) -> Int -> [[Int]]
shape row x = loop (x - 1) where
    loop (-1) = []
    loop n = (row (x - n) x) : loop (n - 1)