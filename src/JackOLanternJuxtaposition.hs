module Main where

run :: String -> String
run = show . product . map read . words

main :: IO ()
main = interact run
