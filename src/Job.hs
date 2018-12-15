module Job where

import NimoWorker

type TaskName = String

data JobRecord
  = Job { uniqueId :: String, taskName :: TaskName }
  deriving (Show)

instance NimoWorker JobRecord where
  performTask a =
    do
      let y = if taskName a == "obi" then True else False
      return ()