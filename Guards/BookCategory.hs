-- Book Category
bookCategory :: Int -> String
bookCategory pages
  | pages < 100 ="Short Story" 
  | pages < 300 = "Novel"
  | pages < 1000 = "SK Book"
  | otherwise ="I dont know"

main = do
  putStrLn "Enter the number of pages of the book"
  print(bookCategory 250)
  print(bookCategory 350)
  print(bookCategory 1200)