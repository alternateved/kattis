module Main where

import Data.Char (digitToInt)

raise :: [String] -> [Int]
raise l = zipWith (^) numbers powers
  where
    numbers = map (read . init) l
    powers = map (digitToInt . last) l

run :: String -> String
run = show . sum . raise . tail . lines

main :: IO ()
main = interact run
