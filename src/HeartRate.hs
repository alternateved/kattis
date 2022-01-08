module Main where

import Text.Printf (printf)

roundTo4Places :: Double -> Double
roundTo4Places x = fromIntegral (round $ x * 1e4) / 1e4

calculateMinABPM :: Int -> Double -> Double
calculateMinABPM b p = roundTo4Places $ 60 / (p / fromIntegral (b - 1))

calculateMaxABPM :: Int -> Double -> Double
calculateMaxABPM b p = roundTo4Places $ 60 / (p / fromIntegral (b + 1))

calculateBPM :: Int -> Double -> Double
calculateBPM b p = roundTo4Places $ 60 * fromIntegral b / p

analyseCase :: String -> String
analyseCase c = unwords . map (printf "%.4f") $ result
  where
    result = [calculateMinABPM b p, calculateBPM b p, calculateMaxABPM b p]
    b = read . head $ c'
    p = read . last $ c'
    c' = words c

run :: String -> String
run = unlines . map analyseCase . tail . lines

main :: IO ()
main = interact run

test =
  unlines
    [ "2",
      "6 5.0000",
      "2 3.1222"
    ]
