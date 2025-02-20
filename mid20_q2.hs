map_list :: (Int -> a) -> Int -> Int -> Int -> [a]
map_list fn a b next = 
  if a > b then 
    [] 
  else 
    [fn a] ++ map_list fn (a + next) b next