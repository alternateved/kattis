module Main where

import Data.List (sort)

run :: String -> String
run =  unwords . map show . sort . map (read :: String -> Int) . words

main :: IO ()
main = interact run
