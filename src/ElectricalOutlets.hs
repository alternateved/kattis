module Main where

calculateCase :: [Int] -> Int
calculateCase l = 1 + sum (tail l) - head l

parseCase :: String -> [Int]
parseCase = map read . words

run :: String -> String
run = unlines . map (show . calculateCase . parseCase) . tail . lines

main :: IO ()
main = interact run

input =
  unlines
    [ "3",
      "3 2 3 4",
      "10 4 4 4 4 4 4 4 4 4 4",
      "4 10 10 10 10"
    ]
