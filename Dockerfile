FROM adoptopenjdk/openjdk8:jdk8u275-b01-alpine-slim

RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-6.8.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
