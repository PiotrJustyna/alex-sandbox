{
module Lexer3 (alexScanTokens) where
}

%wrapper "basic"

$digit  = 0-9
$alpha  = [a-zA-Z]

tokens :-

  $white+ ;
  block=id\=\"[$alpha $digit]+\" { \s -> "id: " <> (drop (length "id=\"") (take (length s - 1) s)) }
{
  main = do
    s <- getContents
    print (length (alexScanTokens s))
}
