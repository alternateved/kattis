module Main where

import Control.Monad (replicateM)

checkEchoNumber :: Int -> Bool
checkEchoNumber n
  | n >= 1 && n <= 10 = True
  | otherwise = False

getLines :: Int -> IO [String]
getLines n = replicateM n getLine

transformLines :: [String] -> [String]
transformLines = map snd . filter (odd . fst) . zip [1..]

main :: IO ()
main = do
  n <- readLn
  if checkEchoNumber n
    then do
      ls <- getLines n
      putStr . unlines $ transformLines ls
    else putStrLn "That was a wrong number!"
