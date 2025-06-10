{
module Lexer3 (alexScanTokens) where

import Data.Strings
}

%wrapper "basic"

$digit        = 0-9
$alpha        = [a-zA-Z]

$idChar       = [$alpha $digit \']
$contentChar  = [$alpha $digit $white \' \, \! \-]

@id           = $idChar+
@content      = $contentChar+

tokens :-

  $white+                     ;
  @id [$white]+ \"@content\"  { \s -> "block: " <> s }
  L                           { \s -> "left branch identifier" }
  R                           { \s -> "right branch identifier" }
  \{                          { \s -> "opening curly bracket" }
  \}                          { \s -> "closing curly bracket" }

{
data Block =
  Block String String
  deriving (Show)

extractBlock :: String -> Block
extractBlock x =
  let id = extractId x
      content = strTrim . strReplace "\"" "" $ drop (length id) x
  in Block id content

extractId :: String -> String
extractId = takeWhile (/= ' ')
}
