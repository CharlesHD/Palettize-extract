module Main where

import Lib
import System.Environment

main :: IO ()
main = do args <- getArgs
          if length args > 2
             then let n = read $ head args :: Int
                      input = args !! 1
                      output = args !! 2
                  in extractPalette n input output
             else putStrLn "Must supply 3 args : size of palette, input file, output file"
