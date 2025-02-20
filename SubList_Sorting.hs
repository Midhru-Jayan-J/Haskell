lensort :: [[a]] -> [[a]]
lensort x = sortBy (\a b -> compare (length a) (length b)) x

main :: IO()
main = do
  putStrLn "Enter the numbers"
  input1 <- getLine
  let in1 = map read (words input1) :: [Int]
  print(lensort in1)
