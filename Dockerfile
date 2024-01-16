# Use a base image with Java 17 and Maven
FROM adoptopenjdk:17-jre-hotspot AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the Maven wrapper and the project POM file
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Copy the entire project
COPY src src

# Build the application
RUN ./mvnw install -DskipTests

# Use a smaller base image for the final image
FROM adoptopenjdk:17-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the builder image
COPY --from=builder /app/target/your-application-name.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]
