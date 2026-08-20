module Main where

import Data.List (foldl')
import System.Environment (getArgs)

sumLazy :: Int -> Int
sumLazy n =
    foldl (+) 0 [1..n]

sumStrict :: Int -> Int
sumStrict n =
    foldl' (+) 0 [1..n]

main :: IO ()
main = do
    args <- getArgs

    case args of
        ["lazy", n] ->
            print $ sumLazy (read n)

        ["strict", n] ->
            print $ sumStrict (read n)

        _ ->
            putStrLn "Uso: ./fold-exp lazy|strict N"