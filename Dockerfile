FROM adoptopenjdk/openjdk11:x86_64-alpine-jdk-11.0.13_8-slim

RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-6.9.2;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
