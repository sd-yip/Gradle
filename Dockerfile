FROM adoptopenjdk/openjdk15:jdk-15.0.1_9-alpine-slim

RUN apk add --no-cache docker-cli=19.03.12-r0
RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-6.7.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
