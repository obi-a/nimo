module Contact where

import NimoWorker

data ContactRecord
  = Contact { name :: String, phoneNumber :: String }

instance NimoWorker ContactRecord where
  performTask a =
    do
      let y = if phoneNumber a == "3234343434" then True else False
      performIO
      return ()


performIO = do
  putStrLn "performing contact work"
  x <- getLine
  return x
