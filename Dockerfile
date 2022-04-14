FROM adoptopenjdk/openjdk15:jdk-15.0.2_7-alpine-slim@sha256:17f44a705cc795dc4317afb20e56221561324ec687632b77648e4b9050b310e6

RUN apk add --no-cache git openssh-client docker-cli=20.10.11-r0
RUN set -e;\
 mkdir /opt/gradle; cd /opt/gradle;\
 z=gradle-7.4.2;\
 wget -qO- https://services.gradle.org/distributions/"$z"-bin.zip | unzip -;\
 chmod +x "$z"/bin/gradle; ln -s "$PWD/$z"/bin/gradle /usr/local/bin/
