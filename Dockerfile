# Use the official Gradle image to build the project
FROM gradle:latest AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY build.gradle.kts settings.gradle.kts /app/
COPY src /app/src

# Build the project using Gradle
RUN gradle build

# Use the official OpenJDK image as the base image for running the application
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/build/libs/*.jar /app/app.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "-jar", "app.jar"]
