FROM adoptopenjdk/openjdk8:jdk8u292-b10-alpine-slim

RUN apk add --no-cache docker-cli=20.10.11-r0
RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-6.9.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
