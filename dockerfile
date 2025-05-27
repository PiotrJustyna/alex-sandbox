FROM alpine:3.21.3

WORKDIR "/root/code/alex-sandbox"

RUN \
  apk update \
  && \
  apk add \
    zsh \
    git \
    openssh \
    curl \
    zlib-dev \
    g++ \
    ghc \
    cabal \
    ncurses-dev \
  && \
  git config --global --add safe.directory "/root/code/alex-sandbox" \
  && \
  cabal update \
  && \
  cabal install hindent \
  && \
  cabal install hlint \
  && \
  cabal install alex \
  && \
  echo "PROMPT='%F{cyan}%n%f %F{magenta}%~%f $ '" >> ~/.zshrc

# 2024-12-02 PJ:
# --------------
# this is where executables
# installed with cabal install are located
ENV PATH="${PATH}:/root/.local/bin"

CMD [ "/bin/zsh" ]
