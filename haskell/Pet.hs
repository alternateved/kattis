module Main where

import Data.List (elemIndex)

run :: String -> String
run = stringify . findMax . map countResults . lines

stringify :: [Int] -> String
stringify = unwords . map show

findMax :: [Int] -> [Int]
findMax l = [1 + index, highestNumber]
  where
    highestNumber = maximum l
    Just index = elemIndex highestNumber l

countResults :: String -> Int
countResults = sum . map read . words

main :: IO ()
main = interact run
