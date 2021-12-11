module Main where

run :: String -> String
run = show . sum . map read . tail . words

main :: IO ()
main = interact run
