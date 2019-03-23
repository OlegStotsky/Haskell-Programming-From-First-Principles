module RegisteredUser where

  newtype Username = Username String

  newtype AccountNumber = AccountNumber Integer

  data User = UnregisteredUser | RegisteredUser Username AccountNumber

  printUser :: User -> IO ()
  printUser UnregisteredUser = putStrLn "Unregistered User" 
  printUser (RegisteredUser 
              (Username userName) 
              (AccountNumber accNumber)) = 
                putStrLn $ userName ++ " " ++ show accNumber
