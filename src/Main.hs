import Foo
import Shapes
import Types

main = do
--     let x = 10
--         shapes = [square, triangle, rightTriangle]
--     mapM_ (\s -> putStrLn $ render(s x)) shapes
       let p = (Point 1.0 3.0)
           c = Circle p 10.0
           sq = Square p 10.0
       putStrLn $ show p
       putStrLn $ show $ area (c)
       putStrLn $ show $ area (sq)


