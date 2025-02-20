-- drink Types
drinkTypes :: String -> String 
drinkTypes "Tea" = "Essential"
drinkTypes "Coffee" = " Keeps you awake"
drinkTypes "ButterMilk" = "Healthy"
drinkTypes _ = "Dont Drink"

main = do
    putStrLn "Drink description"
    print(drinkTypes "Tea")
    print(drinkTypes "ButterMilk")
    print(drinkTypes "Cold drinks")

