module Main where

myGroup :: String -> [String]
myGroup [] = []
myGroup (x:xs) = go [x] x xs
  where
    go acc c [] = [acc]
    go acc c (y:ys)
      | y == c = go (acc ++ [y]) c ys
      | otherwise = acc : go [y] y ys

run :: String -> String
run = map head . myGroup

main :: IO ()
main = interact run
