FROM adoptopenjdk/openjdk8:jdk8u292-b10-alpine-slim

RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-7.1.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
