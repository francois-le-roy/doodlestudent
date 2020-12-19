FROM alpine:latest

LABEL version="1.0" maintainer="François Le Roy <francois.leroy@etudiant.univ-rennes1.fr>"
#Copy the application src in /app
COPY . $HOME/app/

# Install bash for debug and curl for download
RUN apk add --no-cache bash \
    && apk add curl

# Install Java and export env
RUN apk add openjdk11
ENV JAVA_HOME /usr/lib/jvm/java/java-11-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

# Import maven docker and clean
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package
