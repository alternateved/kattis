module Main where

import Data.List (elemIndex)

run :: String -> String
run = stringify . findMax . map countResults . lines

stringify :: [Int] -> String
stringify = unwords . map show

findMax :: [Int] -> [Int]
findMax l = [1 + indice, highestNumber]
  where
    highestNumber = maximum l
    Just indice = elemIndex highestNumber l

countResults :: String -> Int
countResults = sum . map read . words

main :: IO ()
main = interact run
