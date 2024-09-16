# base image
FROM ubuntu:22.04

# set non-interactive shell
ENV DEBIAN_FRONTEND=noninteractive

# update, upgrade and install packages in one layer, then clean up
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y build-essential python3 git cmake curl zip unzip tar pkg-config \
    && rm -rf /var/lib/apt/lists/*
