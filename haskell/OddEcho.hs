module Main where

import Control.Monad (replicateM)

getInt :: IO Int
getInt = readLn

checkEchoNumber :: Int -> Bool
checkEchoNumber n
  | n >= 1 && n <= 10 = True
  | otherwise = False

getLines :: Int -> IO [String]
getLines n = replicateM n getLine

putOddLines :: [String] -> IO ()
putOddLines = go 1
  where
    go _ [] = return ()
    go acc (x : xs) =
      if odd acc
        then putStrLn x >> go (acc + 1) xs
        else go (acc + 1) xs

main :: IO ()
main = do
  n <- getInt
  if checkEchoNumber n
    then do
      ls <- getLines n
      putOddLines ls
    else putStrLn "That was a wrong number!"
