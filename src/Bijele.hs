module Main where

analyseChessboard :: [Integer] -> [Integer]
analyseChessboard [k, q, r, b, ks, p] = map negate [k - 1, q - 1, r - 2, b - 2, ks - 2, p - 8]
analyseChessboard _ = []

run :: String -> String
run = unwords . map show . analyseChessboard . map read . words

main :: IO ()
main = interact run

test = "2 1 2 1 2 1"
