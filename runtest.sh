!/bin/bash
CMD="java -jar ./target/Lab2-0.0.1-SNAPSHOT.war"
$CMD &
SERVICE_PID=$!
# mvn test
wait "$SERVICE_PID"
