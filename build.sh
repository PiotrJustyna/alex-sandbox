# generate lexers:
alex ./Lexers/Lexer1/Lexer1.x && \
alex ./Lexers/Lexer2/Lexer2.x && \
alex ./Lexers/Lexer3/Lexer3.x && \

# build & lint haskell code
cabal build && hlint .
