module Main where

megabytesAvailable :: [Int] -> Int
megabytesAvailable l = plan - sum rest
  where
    plan = head l * (l !! 1 + 1)
    rest = drop 2 l

run :: String -> String
run = show . megabytesAvailable . map read . lines

main :: IO ()
main = interact run

test =
  unlines
    [ "10",
      "3",
      "4",
      "6",
      "2"
    ]
