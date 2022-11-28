module Main where

run :: String -> String
run = filter (\x -> x `elem` ['A'..'Z'])

main :: IO ()
main = interact run
