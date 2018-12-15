module Main where

import NimoWorker
import Job
import Person
import Contact

main :: IO ()
main = do
          let x = Job "123" "obi"
          let y = Person "obi" "akubue"
          let z = Contact "money" "34343433443"
          let jobQueue = [(performTask x), (performTask y), (performTask z)]
          jobQueue !! 2
          return ()
