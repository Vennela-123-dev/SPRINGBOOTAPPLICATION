# Use official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Argument for the built JAR file
ARG JAR_FILE=target/*.jar

# Copy JAR to container
COPY ${JAR_FILE} app.jar

# Run the JAR
ENTRYPOINT ["java","-jar","/app.jar"]

