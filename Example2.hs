module Example2 where

import Lexer2 (alexScanTokens)
import System.IO

scan :: IO ()
scan = do
  fileContent <- readFile "input2.txt"
  print $ alexScanTokens fileContent
