module Main where

getQuadrant :: [Int] -> Int
getQuadrant l
  | x > 0 && y > 0 = 1
  | x < 0 && y > 0 = 2
  | x < 0 && y < 0 = 3
  | otherwise      = 4
  where
    x = head l
    y = last l

run :: String -> String
run = show . getQuadrant . map read . lines

main :: IO ()
main = interact run
