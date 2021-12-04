module Main where

fuseRods :: [Int] -> Int
fuseRods l = rods - loss
  where
    rods = sum $ tail l
    loss = head l - 1

run :: String -> String
run = show . fuseRods . map read . lines

main :: IO ()
main = interact run
