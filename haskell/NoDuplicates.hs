module Main where

searchElem :: [String] -> String
searchElem [] = "yes"
searchElem (x:xs) = if x `elem` xs then "no" else searchElem xs

main :: IO ()
main = interact $ searchElem . words
