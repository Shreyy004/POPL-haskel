printGreeting :: String -> IO ()
printGreeting name = putStrLn $ "Welcome to Haskell, " ++ name ++ "!"


main = do
  putStrLn "Greetings hellooooo"
  var1 <- getLine
  printGreeting var1
