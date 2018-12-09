module Job where

import GHC.Generics
import qualified Data.Aeson as Aeson

type TaskArgs = Aeson.Object
type TaskName = String
type TaskHandler = [String] -> IO ()

data JobRecord
  = Job { uniqueId :: String, params :: TaskArgs, taskName :: TaskName }
  deriving (Show)

data TaskRecord
  = Task { taskName :: TaskName, task :: TaskHandler, description :: String }

apply :: (t1 -> t2) -> t1 -> t2
apply func args = func args

--dispatch task_name params =
