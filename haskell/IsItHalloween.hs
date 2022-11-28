module Main where

import Data.Char (toLower)

checkIfHalloween :: String -> String
checkIfHalloween s = if date == "dec 25" || date == "oct 31" then "yup" else "nope"
  where
    date = map toLower s

main :: IO ()
main = interact checkIfHalloween
