Euclidean :: a -> a -> a -> a-> (Double,Int)
Euclidean a b c d = ((a-c)**2  + (b-d)**2)**(0.5)

msin :: IO()
main = do
  putStrLn "Give the input"
   