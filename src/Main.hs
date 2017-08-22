module Main where

main :: IO ()
main = do
    let x = 5
    let separator = "\n"
    putStrLn $ center "xxxx" 2
--     putStrLn $ rightTriangle x
--     putStrLn separator
--     putStrLn $ equilateralTriangle x

iArr = [1,2,3]
chArr = ['a','b','c', 'y']
strAarr = ["a", "bb", "ccc"]

rightTriangle :: Int -> String
rightTriangle n = loop n 1 ""
    where loop height lvl acc
            | lvl > height = acc
            | otherwise    = loop height (lvl + 1) (acc  ++ drawLine lvl ++ "\n")


equilateralTriangle :: Int -> String
equilateralTriangle n = loop n 1 ""
    where loop height lvl acc
--             | lvl > height = acc
            | otherwise    = loop height (lvl + 2) (acc ++ "\n" ++ drawLine lvl)


nString :: Char -> Int -> String
nString ch n = take n (iterate id ch)

drawLine = nString 'x'

center :: String -> Int -> String
center str width
    | length str > width = error "String longer than width"

join :: String -> [String] -> String
join _ (x:[]) = x
join s (x:xs) = x ++ s ++ (join s xs)
