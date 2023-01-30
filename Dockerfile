FROM ubuntu:latest

WORKDIR /root/dotfiles
COPY . .
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
