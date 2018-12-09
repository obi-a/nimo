module Main where

import Job
import Data.Text (Text)

{-}
taskList :: [TaskRecord]
taskList =
	[(Task "printAge" printAge "prints age of client")
  ,(Task "printSalary" printSalary "prints salary of client")
	]
-}
data Client = Client { name :: Text, age :: Int, salary :: Double } deriving Show



printAge a b = print $ a + b


printSalary a b = print $ a * b

main :: IO ()
main = do
  -- let y = Job "123" "awesome job"
  let y = apply (+) 6 8
  return ()
