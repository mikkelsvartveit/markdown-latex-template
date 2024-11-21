FROM mcr.microsoft.com/devcontainers/python:3.12

# Install TeXLive and Pandoc
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    texlive-full \
    pandoc \
    inotify-tools \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
