module Main where

run :: String -> String
run = unlines . reverse . tail . lines

main :: IO ()
main = interact run
