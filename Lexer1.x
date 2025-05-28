{
module Lexer1 (alexScanTokens) where
}

%wrapper "basic"

words :-

$white+ ;
[\,\!]+           { \s -> "punctuation: " <> s }
[A-Za-z0-9\'\-]+	{ \s -> "word: " <> s }

{
  main = do
    s <- getContents
    print (length (alexScanTokens s))
}
