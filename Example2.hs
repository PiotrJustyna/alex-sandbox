module Example2 where

import Lexer2 (alexScanTokens)
import System.IO

scan :: IO ()
scan = do
  fileContent <- readFile "./Lexers/Lexer2/input.txt"
  print $ alexScanTokens fileContent
