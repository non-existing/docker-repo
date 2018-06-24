# Dockerfile

# inherit from this "empty base image", see https://hub.docker.com/_/python/
FROM openjdk:latest

MAINTAINER ich bin <ich.bin@adesso.ch>

WORKDIR /usr/src/app

# copy application source code into container
COPY . .

# run this command at run-time
CMD [ "java", "-jar", "springdemo.war" ]

# expose this TCP-port
EXPOSE 8080

# make this path persistent between versions of the container - not needed in this example
# VOLUME /usr/src/app/mypersistentdatavolume/