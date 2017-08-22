module Main where

main :: IO ()
main = do
    putStrLn $ triangle 7

iArr = [1,2,3]
chArr = ['a','b','c', 'y']
strAarr = ["a", "bb", "ccc"]

px = "x"
triangle :: Int -> String
triangle n = loop n 1 ""
    where
          draw = nString 'x'
          loop height lvl acc
            | lvl > height = acc
            | otherwise     = loop height (lvl + 1) (acc ++ "\n" ++ draw lvl)

calcLines :: Int -> [Int]
calcLines 1 = [1]
calcLines x =  (calcLines(x - 1)) ++ [x * 2 - 1]


nString :: Char -> Int -> String
nString ch n = take n (iterate id ch)

join :: String -> [String] -> String
join _ (x:[]) = x
join s (x:xs) = x ++ s ++ (join s xs)
