FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Install TeXLive and Pandoc
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    texlive-full \
    pandoc \
    inotify-tools \
    librsvg2-bin \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
