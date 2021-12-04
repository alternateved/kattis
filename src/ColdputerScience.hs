module Main where

run :: String -> String
run = show . length . filter (< 0) . tail . map read . words

main :: IO ()
main = interact run
