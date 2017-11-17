import Foo
import Shapes

main = do
    let x = 10
        shapes = [square, triangle, rightTriangle]
    mapM_ (\s -> putStrLn $ render(s x)) shapes


