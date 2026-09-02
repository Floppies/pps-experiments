module Main where

import System.Environment (getArgs)

sumNumbers :: Int -> Int
sumNumbers n = go 1 0
  where
    go i acc
      | i > n     = acc
      | otherwise = go (i + 1) (acc + i)

main :: IO ()
main = do
    args <- getArgs
    let n = read (head args) :: Int
    print (sumNumbers n)