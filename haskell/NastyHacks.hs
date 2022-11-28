module Main where

analyseCase :: String -> String
analyseCase c
  | r == s = "does not matter"
  | r < s = "advertise"
  | otherwise = "do not advertise"
  where
    r = head c'
    s = c' !! 1 - last c'
    c' = map (read :: String -> Integer) $ words c

run :: String -> String
run = unlines . map analyseCase . tail . lines

main :: IO ()
main = interact run

test =
  unlines
    [ "3",
      "0 100 70",
      "100 130 30",
      "-100 -70 40"
    ]
