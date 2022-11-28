module Main where

main :: IO ()
main = do
  n <- readLn
  if odd n
    then putStrLn "Alice"
    else putStrLn "Bob"
