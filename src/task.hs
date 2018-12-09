module Task where

data TaskRecord
  = Task { taskName :: String, task :: TaskHandler, description :: String }
  deriving (Show)

taskList :: [TaskRecord]
taskList =
	[("sum", sum, "applies the sum of numbers")
  ,("product", product, "applies multiplication of numbers")
	]

sum :: Num a => a -> a -> a
sum a b = a + b

product :: Num a => a -> a -> a
product a b = a * b
