module Main where

import Data.List (isInfixOf, elemIndices)

findBlimps :: [String] -> String
findBlimps l =
  if or blimps
    then
      unwords $
        map (show . (+ 1)) $
          elemIndices True blimps
    else "HE GOT AWAY!"
  where
    blimps = map (isInfixOf "FBI") l

run :: String -> String
run = findBlimps . lines

main :: IO ()
main = interact run

test =
  [ "N-FBI1",
    "9A-USKOK",
    "I-NTERPOL",
    "G-MI6",
    "RF-KGB1"
  ]

test2 =
  [
    "N321-CIA",
    "F3-B12I",
    "F-BI-12",
    "OVO-JE-CIA",
    "KRIJUMCAR1"
  ]
