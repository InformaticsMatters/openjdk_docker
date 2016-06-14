# OpenJDK image that includes the Docker engine binaries. Designed for Java apps that need to use Docker 
# e.g. using the docker-java library https://github.com/docker-java/docker-java 

FROM java:openjdk-8-jre
MAINTAINER Tim Dudgeon <tdudgeon@informaticsmatters.com>

RUN apt-get update && apt-get install -y apt-transport-https ca-certificates &&\
 apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
 
RUN echo 'deb https://apt.dockerproject.org/repo debian-jessie main' > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-engine

