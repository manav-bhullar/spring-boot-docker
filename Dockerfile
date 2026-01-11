# Use a Java 21 runtime image
FROM eclipse-temurin:21-jre-jammy

# Set working directory inside container
WORKDIR /app

# Copy the built JAR into container
COPY target/coursera-0.0.1-SNAPSHOT.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]