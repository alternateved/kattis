module Main where

produceChant :: [String]
produceChant = map (flip (++) " Abracadabra" . show) [1..]

main :: IO ()
main = do
  n <- readLn
  putStr $ unlines . take n $ produceChant
