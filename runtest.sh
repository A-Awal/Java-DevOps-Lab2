#!/bin/bash
CMD="java -jar ./target/Lab2-0.0.1-SNAPSHOT.war  --port=5001"
$CMD &
SERVICE_PID=$!
# mvn test
wait "$SERVICE_PID"
