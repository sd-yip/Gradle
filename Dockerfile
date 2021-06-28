FROM adoptopenjdk/openjdk15:jdk-15.0.2_7-alpine-slim

RUN apk add --no-cache docker-cli=20.10.3-r1 git=2.30.2-r0 openssh-client=8.4_p1-r3
RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-7.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
