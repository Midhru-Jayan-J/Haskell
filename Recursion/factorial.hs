factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial(n-1)

main = do 
  input <- getLine
  let n = read input :: Int 
  print(factorial n)