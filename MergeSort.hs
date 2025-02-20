merge :: (Ord a)=>[a]->[a]->[a]
merge [] ys = ys
merge xs [] = xs 
merge (x:xs) (y:ys)
  |x <= y = x : merge (xs) (y:ys)
  |otherwise = y : merge (x:xs) (ys)

mergeSort :: (Ord a) => [a] ->[a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort left)  (mergeSort right)
    where 
      mid = length xs `div` 2
      left =take mid xs
      right= drop mid xs

main :: IO()
main =do 
  putStrLn "Enter the numbers"
  input1 <- getLine 
  let in1 =map read (words input1) :: [Int]
  putStrLn "The sorted array is :"
  print(mergeSort in1)   