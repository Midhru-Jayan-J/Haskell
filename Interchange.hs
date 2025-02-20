main :: IO()
main = do 
  putStrLn "Enter the first number"
  input1 <- getLine
  let in1 =read input1 :: Int 
  putStrLn "Enter the second number"
  input2 <- getLine
  let in2 = read input2 :: Int 

  print $ "The numbers before swapping are num1 :" ++ show in1 ++ "num 2" ++ show in2

  let in1 = in1 + in2
  let in2 = in1 - in2
  let in1 = in1 - in2

  print $ "The numbers before swapping are num1 :" ++ show in1 ++ "num 2" ++ show in2


