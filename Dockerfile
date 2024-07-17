# syntax=docker/dockerfile:1
FROM maven:3.8.4-openjdk-17-slim AS base
WORKDIR /app
COPY pom.xml .
COPY src ./src

FROM base AS test
RUN --mount=type=cache,target=/mnt/Users/AbdulaiAwal/.m2 \
    mvn test

FROM base As build
RUN --mount=type=cache,target=/mnt/Users/AbdulaiAwal/.m2 \
   mvn package -DskipTests

FROM eclipse-temurin:21-jdk-jammy AS build-production
COPY --from=build app/target/JavaLab3-0.0.1-SNAPSHOT.war .
CMD ["java", "-jar", "JavaLab3-0.0.1-SNAPSHOT.war"]