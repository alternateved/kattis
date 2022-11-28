module Main where

run :: String -> String
run = unwords . replicate 3

main :: IO ()
main = interact run
