-- Density

calDensity :: (Float,Float) -> Float
calDensity (population,area) = density where density = population/area

main = do 
  print(calDensity (112000.85,999.25))
