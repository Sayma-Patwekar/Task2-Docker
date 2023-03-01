#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean install -Dv=${BUILD_NUMBER}

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY target/*.war /usr/local/tomcat/webapps
