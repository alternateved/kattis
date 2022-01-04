module Main where

analyseCase :: String -> String
analyseCase l
  | a + b == c = "Possible"
  | a - b == c = "Possible"
  | a * b == c = "Possible"
  | a / b == c = "Possible"
  | b - a == c = "Possible"
  | b / a == c = "Possible"
  | otherwise = "Impossible"
  where
    l' = map read . words $ l
    a = head l'
    b = l' !! 1
    c = last l'

run :: String -> String
run = unlines . map analyseCase . tail . lines

main :: IO ()
main = interact run

test =
  unlines
    [ "6",
      "1 2 3",
      "2 24 12",
      "5 3 1",
      "9 16 7",
      "7 2 14",
      "12 4 2"
    ]
