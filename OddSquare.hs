oddSquare :: [Int] -> [Int]
oddSquare [] =[]
oddSquare (x:xs)
  |odd x = x*x :oddSquare xs
  |otherwise = x : oddSquare xs

main :: IO()
main = do
  input1 <- getLine
  let in1 =