import Data.Link (group,sort)

frequency :: (Ord a) => [a] ->[(a,Int)]
frequency xs = map(\x -> (head x,length x)) $group $sort

main :: IO()
main =do
  input1 <- getLine
  let elements = map read (words input1) :: [Int]
      oddFreq = filter(\(_,f)-> odd f) freq
      oddNumbers = map fst oddFreq
  putStrLn $ "Number ocuuring odd number of times " ++ show oddNumbers


