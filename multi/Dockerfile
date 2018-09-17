FROM ubuntu:18.04

RUN apt update \
    && apt install -y --no-install-recommends python2.7 python3.6 python3.7 tox \
    && rm -rf /var/lib/apt/lists/*
