import Shapes
import Types
import Files
import System.IO


printShapes :: IO ()
printShapes = do
    let x = 10
        shapes = [square, triangle, rightTriangle]
    mapM_ (\s -> putStrLn $ render(s x)) shapes
    where   p = (Point 1.0 4.0)
            c = Circle p 10.0
            sq = Square p 10.0


printFile :: IO ()
printFile = do
         h <- openFile "file.txt" ReadMode
         r <- hGetContents h
         putStrLn r
         hClose h


main :: IO()
main = printFile

