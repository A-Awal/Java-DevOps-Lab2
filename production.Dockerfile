FROM maven:3.8.4-openjdk-17-slim
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests
CMD ["java", "-jar", "./target/Lab2-0.0.1-SNAPSHOT.war"]