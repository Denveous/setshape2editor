FROM amazoncorretto:21-alpine-jdk AS build
COPY . /home/gradle/src
USER root
WORKDIR /home/gradle/src
RUN ./gradlew build --no-daemon --stacktrace
