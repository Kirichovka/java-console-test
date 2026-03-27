FROM maven:3.9.10-eclipse-temurin-17-alpine AS build
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre-alpine
COPY --from=build target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]