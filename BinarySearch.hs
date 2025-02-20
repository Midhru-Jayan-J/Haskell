binarySearch :: (Ord a) => [a] -> a -> Int
binarySearch list target = search 0 (length list - 1)
  where
    search low high
      | low > high = -1
      | midval == target = mid
      | midval > target = search low (mid - 1)
      | otherwise = search (mid + 1) high
      where
        mid = low + (high - low) `div` 2
        midval = list !! mid

main :: IO ()
main = do
  putStrLn "Enter the list of numbers:"
  input1 <- getLine
  let in1 = map read (words input1) :: [Int]
  
  putStrLn "Enter the target number:"
  input2 <- getLine
  let target = read input2 :: Int

  let result = binarySearch in1 target
  if result == -1
    then putStrLn "Element not found"
    else putStrLn ("Element found at index " ++ show result)
