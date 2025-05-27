#!/bin/sh

# 2024-12-04 PJ:
# --------------
# At the time of writing this, these directories are covered here:
# https://cabal.readthedocs.io/en/latest/config.html#directories
# Mounting them as volumes allows us to reuse cabal files
# between containers saving a significant amount of build time.
docker volume create alex-sandbox-cabal-config
docker volume create alex-sandbox-cabal-cache
docker volume create alex-sandbox-cabal-state

docker buildx build \
  -t "alex-sandbox:latest" \
  -f "dockerfile" \
  . \
&& \
docker run \
  -it \
  -v "$HOME/.ssh/:/root/.ssh:ro" \
  -v "$(pwd):/root/code/alex-sandbox" \
  -v alex-sandbox-cabal-config:/root/.config/cabal \
  -v alex-sandbox-cabal-cache:/root/.cache/cabal \
  -v alex-sandbox-cabal-state:/root/.local/state/cabal \
  --rm "alex-sandbox:latest"
