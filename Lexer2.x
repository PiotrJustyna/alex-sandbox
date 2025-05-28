{
module Lexer2 (alexScanTokens) where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]

tokens :-

  $white+ ;
  id=\"[$alpha $digit]+\" { \s -> "id: " <> (drop (length "id=\"") (take (length s - 1) s)) }
  content=\"[$alpha $digit \, \! $white]+\" { \s -> "content: " <> (drop (length "content=\"") (take (length s - 1) s)) }

{
  main = do
    s <- getContents
    print (length (alexScanTokens s))
}
