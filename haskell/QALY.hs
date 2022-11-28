module Main where

transform :: String -> Double
transform = product . map read . words

run :: String -> String
run = show . sum . map transform . tail . lines

main :: IO ()
main = interact run
