#
# Ubuntu Dockerfile
#
# https://github.com/davidsanfal/ubuntu14_biicode
#

# Pull base image.
FROM ubuntu:14.04

# Install.

ADD apt_rep/ /etc/apt/sources.list.d/

RUN \
  apt-get update && \
  apt-get install -y build-essential && \
  apt-get install -y wget && \
  wget -O /etc/apt/trusted.gpg.d/biicode.gpg http://apt.biicode.com/keyring.gpg && \
  apt-get update && \
  apt-get -y install biicode

RUN bii setup:cpp

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root
