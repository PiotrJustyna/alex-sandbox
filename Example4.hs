module Example4 where

import Lexer4 (alexScanTokens)
import System.IO

scan :: IO ()
scan = do
  fileContent <- readFile "./Lexers/Lexer4/input.txt"
  print $ alexScanTokens fileContent
