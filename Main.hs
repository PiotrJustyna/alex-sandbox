module Main where

import Example1 (scan)
import Example2 (scan)

main :: IO ()
main = do
  -- Example1.scan
  Example2.scan
