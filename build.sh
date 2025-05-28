# generate lexers:
alex Lexer1.x && \
alex Lexer2.x && \

# build & lint haskell code
cabal build && hlint .
