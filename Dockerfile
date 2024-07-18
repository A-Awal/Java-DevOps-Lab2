# syntax=docker/dockerfile:1
FROM maven:3.8.4-openjdk-17-slim AS base
WORKDIR /app
COPY pom.xml .
COPY src ./src

FROM base AS test
RUN --mount=type=cache,target=/mnt/Users/AbdulaiAwal/.m2 \
    mvn test

FROM base AS build
RUN --mount=type=cache,target=/mnt/Users/AbdulaiAwal/.m2 \
   mvn package -DskipTests

FROM eclipse-temurin:21-jdk-jammy AS production
COPY --from=build app/target/Lab2-0.0.1-SNAPSHOT.war .
CMD ["java", "-jar", "Lab2-0.0.1-SNAPSHOT.war"]