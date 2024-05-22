FROM ubuntu:22.04 as base

ENV DEBIAN_FRONTEND noninteractive

COPY ownca /ownca

RUN apt-get update -y && apt-get install -y --no-install-recommends make && make -C /ownca wheels


FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

COPY ownca /ownca

COPY --from=base /opt/wheels /opt/wheels

RUN apt-get update -y && apt-get install -y --no-install-recommends make && make -C /ownca setup
