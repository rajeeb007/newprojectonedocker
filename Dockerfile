# Stage 1: Build the application
FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

# Stage 2: Create the runtime image
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/lastproject-1.0.0.jar .
EXPOSE 8080
CMD ["java", "-jar", "lastproject-1.0.0.jar"]
