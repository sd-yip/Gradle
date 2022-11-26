FROM adoptopenjdk/openjdk8:jdk8u345-b01-alpine-slim@sha256:add22dc4b87c0dbc038e3916b731b7d278460ab1e0b4c4ec59b9de3fb1231f1f

RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-7.6;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
