module Example3 where

import Lexer3 (alexScanTokens)
import System.IO

scan :: IO ()
scan = do
  fileContent <- readFile "./Lexers/Lexer3/input.txt"
  print $ alexScanTokens fileContent
