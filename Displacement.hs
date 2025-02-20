main :: IO ()
main = do
  putStrLn "Enter the initial velocity"
  input1 <- getLine
  let u = read input1 :: Double

  putStrLn "Enter the time"
  input2 <- getLine
  let t = read input2 :: Double

  putStrLn "Enter the acceleration"
  input3 <- getLine
  let a = read input3 :: Double

  let s= u*t + (1/2)*a*t^2
  print $ "The displacement is :" ++ show s 

  



