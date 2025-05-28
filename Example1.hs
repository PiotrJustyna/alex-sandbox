module Example1 where

import Lexer1 (alexScanTokens)

scan :: IO ()
scan = print $ alexScanTokens "Hello, World!"
