FROM adoptopenjdk/openjdk15:jdk-15.0.2_7-alpine-slim

RUN apk add --no-cache docker-cli=20.10.7-r1 git=2.32.0-r0 openssh-client=8.6_p1-r2
RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-7.1.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
