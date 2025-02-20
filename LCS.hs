lCS :: [String] -> String
lCS [] =""
lCS str_list = foldl1 cS str_list
  where 
    cS (x:xs) (y:ys)  | x==y = x : cS xs ys
                      | otherwise =[]
    cS _ _ =[]

main :: IO()
main = do 
  input1 <- getLine
  let str_list = words input1
      result = lCS str_list
  putStrLn $ "The LCS is " ++ show result 

