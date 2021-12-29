module Main where

analyseDigit :: Integer -> String
analyseDigit n =
  if odd n
    then show n ++ " is odd"
    else show n ++ " is even"

run :: String -> String
run = unlines . map (analyseDigit . read) . tail . lines

main :: IO ()
main = interact run

test =
  unlines
    [ "3",
      "10",
      "9",
      "-5"
    ]
