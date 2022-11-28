module Main where

import Control.Monad (replicateM)

readInts :: String -> IO [Int]
readInts = mapM readIO . words

getLines :: Int -> IO [String]
getLines n = replicateM n getLine

main :: IO ()
main = do
  l <- getLine
  [n, p] <- readInts l
  if n >= 1 && p <= 1000
    then getLines n >> print p
    else putStrLn "One of the provided numbers is wrong!"
