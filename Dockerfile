# ------------------------------------------------------------
# This file is part of the AIT QKD R10 suite.
#
# The 'LICENCE.txt' file in the project root holds the software license.
# Copyright (C) 2012-2018 AIT Austrian Institute of Technology
# http://www.ait.ac.at, <office@ait.ac.at>
# ------------------------------------------------------------

FROM debian:stretch

LABEL authors="Oliver Maurhart, Stefan Petscharnig" \
      version="0.1.0"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
        locales \
        libboost-filesystem1.62.0 libboost-system1.62.0 libboost-program-options1.62.0 \
        libssl1.1 \
        libdbus-1-3 \
        libzmq5 \
        libgmp10 \
        libqt5dbus5 libqt5network5 libqt5widgets5 \
        libqt5xml5 \
        python3 \
        && rm -rf /var/lib/apt/lists/*

ENV DISPLAY :0

RUN locale-gen --no-purge en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

