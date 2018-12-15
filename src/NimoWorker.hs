module NimoWorker where

class NimoWorker a where
  performTask :: a -> IO ()
