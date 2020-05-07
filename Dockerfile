FROM openjdk:8-alpine

RUN apk update
RUN apk add maven
COPY pom.xml /usr/local/Calculator/pom.xml
COPY src /usr/local/Calculator/src
COPY target/Calculator-1.0-SNAPSHOT.jar usr/local/Calculator/target/Calculator-1.0-SNAPSHOT.jar
WORKDIR /usr/local/Calculator
CMD ["java","-cp","target/Calculator-1.0-SNAPSHOT.jar","com/calculator/Calculator"]
