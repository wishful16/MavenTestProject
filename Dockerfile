FROM openjdk:8-alpine

RUN apk update
RUN apk add maven
COPY pom.xml Users/abhashsingh/IdeaProjects/MavenTestProject/pom.xml
COPY src Users/abhashsingh/IdeaProjects/MavenTestProject/src
WORKDIR Users/abhashsingh/IdeaProjects/MavenTestProject
RUN mvn package
CMD ["java","-cp","target/Calculator-1.0-SNAPSHOT.jar","com/calculator/Calculator"]
