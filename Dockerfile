FROM ubuntu:22.04

LABEL maintainer="ThienSon Hoang <s.hoang1103@gmail.com>"


# this is for timezone config
ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=America/Detroit
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#-y is for accepting yes when the system asked us for installing the package
RUN apt-get update && apt-get install -y \
    git \	
    cmake \
    ninja-build \
    doxygen \
    build-essential \
    graphviz \
    && rm -rf /var/lib/apt/lists/*