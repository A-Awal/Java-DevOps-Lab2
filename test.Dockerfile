# Use an official Maven image as the base image
FROM maven:3.8.4-openjdk-17-slim 

WORKDIR /app
COPY pom.xml .
COPY src ./src
COPY runtest.sh /scripts/runtest.sh
RUN mvn clean package -DskipTests

RUN ["chmod", "+x", "/scripts/runtest.sh"]


#run test

ENTRYPOINT ["/scripts/runtest.sh"]
