FROM openjdk:17-jdk-slim

# Metadata
LABEL maintainer="yourname"

# Set working directory
WORKDIR /app

# Copy the built jar (target/*.jar)
COPY target/*.jar app.jar

# Expose default Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]