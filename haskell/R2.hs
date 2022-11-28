module Main where

calculateR2 :: [Int] -> Int
calculateR2 xs = 2 * last xs - head xs

run :: String -> String
run = show . calculateR2 . map read . words

main :: IO ()
main = interact run
