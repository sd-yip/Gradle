FROM adoptopenjdk/openjdk8:jdk8u372-b07-alpine-slim@sha256:9784844b1a99408fb00f61971c6319711d3ce3e2d4a9256480fd4a7a18640893

RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-7.6.1;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
