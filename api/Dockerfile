FROM alpine:latest

LABEL version="1.0" maintainer="François Le Roy <francois.leroy@etudiant.univ-rennes1.fr>"

# Install bash for debug and curl for download
RUN apk add --no-cache bash \
    && apk add curl \

# Install Java and export env
RUN apk add openjdk11

ENV JAVA_HOME /usr/lib/jvm/java/java-11-openjdk
ENV PATH $JAVA_HOME/bin:$PATH
