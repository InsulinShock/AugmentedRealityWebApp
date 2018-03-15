#
# Super simple example of a Dockerfile
#
FROM ubuntu:latest
MAINTAINER Geoff McVittie

#Update the package lists
RUN apt-get update

# Install *gcc* (and related dependencies)
RUN apt-get -y install build-essential

# Install cmake
RUN apt-get -y install cmake

# Install Python
RUN apt-get -y install python

# Install node.js
RUN apt-get -y install nodejs

# Install Java (optional, only needed for Closure Compiler minification)
RUN apt-get -y install default-jre


RUN apt-get -y install curl

RUN curl https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz | tar xz

RUN ./emsdk-portable/emsdk update
RUN ./emsdk-portable/emsdk install latest
RUN ./emsdk-portable/emsdk activate latest

COPY app /home/

WORKDIR /home

ENTRYPOINT /home/build.bash