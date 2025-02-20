classAverageAndMessage :: [Int] -> String
classAverageAndMessage marks =
  let n = length marks
      total =sum marks
      average = fromIntegral total/(fromIntegral n::Double)
      belowAverageCount = length $ filter (\x -> fromIntegral x<average) marks
  in
      if belowAverageCount > 2
         then "More than 2 students have below class averge"
         else "No issue with class average"

main :: IO()
main = do
  putStrLn "Enter the marks"
  input1 <- getLine
  let marks = map read (words input1) :: [Int]
      averageMessage= classAverageAndMessage marks
      average=fromIntegral (sum marks)/ fromIntegral (length marks) :: Double 
  putStrLn $ "The average is : " ++ show average
  putStrLn averageMessage
