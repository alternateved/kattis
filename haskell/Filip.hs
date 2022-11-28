module Main where

run :: String -> String
run = show . maximum . map ((read :: String -> Int) . reverse) . words

main :: IO ()
main = interact run
