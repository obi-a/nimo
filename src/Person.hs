module Person where

import NimoWorker

data PersonRecord
  = Person { firstName :: String, lastName :: String }
  deriving (Show)

instance NimoWorker PersonRecord where
  performTask a =
    do
      let c = if lastName a == "akubue" then True else False
      return ()