{
module Lexer3 (alexScanTokens) where
}

%wrapper "basic"

$digit        = 0-9
$alpha        = [a-zA-Z]

$idChar       = [$alpha $digit \']
$contentChar  = [$alpha $digit $white \' \, \!]

@id           = $idChar+
@content      = $contentChar+

tokens :-

  $white+ ;
  @id [$white]+ \"@content\" { \s -> extractBlock s }

{
data Block =
  Block String String
  deriving (Show)

extractBlock :: String -> Block
extractBlock x =
  let id = extractId x
      content = drop (length id) x
  in Block id content

extractId :: String -> String
extractId = takeWhile (/= ' ')
}
