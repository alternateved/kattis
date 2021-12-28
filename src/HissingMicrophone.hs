module Main where

import           Data.List (isInfixOf)

run :: String -> String
run s = if "ss" `isInfixOf` s then "hiss" else "no hiss"

main :: IO ()
main = interact run
