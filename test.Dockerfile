FROM maven:3.8.4-openjdk-17-slim

WORKDIR /app
COPY pom.xml .
COPY src ./src
COPY runtest.sh /scripts/runtest.sh
RUN mvn clean package -DskipTests

RUN ["chmod", "+x", "/scripts/runtest.sh"]