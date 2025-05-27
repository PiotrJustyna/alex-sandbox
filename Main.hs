module Main where

import Lexer (alexScanTokens)

main :: IO ()
main = print $ alexScanTokens "Hello, World!"
