module Main where

calculateArea :: [Int] -> Double
calculateArea l =  h * b / 2.0
  where
    h = fromIntegral $ head l
    b = fromIntegral $ last l

run :: String -> String
run =  show . calculateArea . map read . words

main :: IO ()
main = interact run
