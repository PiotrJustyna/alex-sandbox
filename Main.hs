module Main where

import Example1 (scan)
import Example2 (scan)
import Example3 (scan)

main :: IO ()
main = do
  -- Example1.scan
  -- Example2.scan
  Example3.scan
