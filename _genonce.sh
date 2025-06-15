#!/bin/bash
set -e

# Make sure the IG Publisher JAR exists
if [ ! -f "input-cache/org.hl7.fhir.publisher.jar" ]; then
  echo "Downloading IG Publisher..."
  mkdir -p input-cache
  curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o input-cache/org.hl7.fhir.publisher.jar
fi

# Run the IG Publisher
java -jar input-cache/org.hl7.fhir.publisher.jar -ig .
