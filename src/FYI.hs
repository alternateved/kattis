module Main where

run :: String -> String
run l = if take 3 l == "555" then "1" else "0"

main :: IO ()
main = interact run
