FROM adoptopenjdk/openjdk8:jdk8u322-b06-alpine-slim

RUN apk add --no-cache docker-cli=20.10.11-r0 git=2.32.0-r0 openssh-client=8.6_p1-r3
RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-7.4.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
