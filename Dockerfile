FROM maven:3.9.10-eclipse-temurin-17-alpine
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]