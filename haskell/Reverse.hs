module Main where

import Control.Monad (replicateM)

getInt :: IO Int
getInt = readLn

getLines :: Int -> IO [Int]
getLines n = replicateM n getInt

putReversed :: [Int] -> IO ()
putReversed [] = return ()
putReversed (x : xs) = putReversed xs >> print x

main :: IO ()
main = do
  n <- getInt
  ls <- getLines n
  putReversed ls
