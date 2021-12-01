module Main where

import Data.List (group)

-- TODO Implement group by hand

run :: String -> String
run = map head . group

main :: IO ()
main = interact run
