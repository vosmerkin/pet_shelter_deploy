# Build stage

#!!!!! ajust java version
#FROM maven:3.9-eclipse-temurin-17 AS build
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Runtime stage

#!!!!! ajust java version
#FROM eclipse-temurin:17-jre-alpine
FROM openjdk:21-slim
WORKDIR /app

#ajust filename (see Project Structure - Modules - Name)
COPY --from=build /app/target/marketplace-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

