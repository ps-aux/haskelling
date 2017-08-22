module Main where

main :: IO ()
main = do
    let x = 20
    let separator = "\n"
    putStrLn $ leftRightTriangle x
    putStrLn $ rightRightTriangle x
    putStrLn $ equilateralTriangle x
    putStrLn $ square x

shape :: (Int -> Int -> String) -> Int -> String
shape lvlToString height = loop height 1 ""
    where loop height lvl acc =
            if lvl > height
                then acc
                else loop height (lvl + 1) (acc  ++ lvlToString height lvl ++ "\n")


leftRightTriangle = shape $ \_ l -> line l

rightRightTriangle = shape $ \h l -> spaceLeftPad (line l) h

square = shape  $ \h _ -> line h

equilateralTriangle = shape equilateralTriangleLvl
equilateralTriangleLvl height lvl = spaceCenter (line (lvlWidth lvl)) baseWidth
    where baseWidth =  lvlWidth height
          lvlWidth l = l * 2 - 1


line width = replicate width '*'

center :: Char -> String -> Int -> String
center fillCh str width =
    if len > width
        then error "String longer than width"
        else fill leftPad ++ str ++ fill rightPad
    where len = length str
          fill n = replicate n fillCh
          leftPad = quot (width - len) 2
          rightPad = width - len - leftPad

leftPad :: Char -> String -> Int -> String
leftPad fillCh str width =
    if len > width
        then error "String longer than width"
        else replicate leftPad fillCh ++ str
    where len = length str
          leftPad = width - len

spaceCenter = center ' '
spaceLeftPad = leftPad ' '

join :: String -> [String] -> String
join _ (x:[]) = x
join s (x:xs) = x ++ s ++ (join s xs)
