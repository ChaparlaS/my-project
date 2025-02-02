# Use OpenJDK 8 JRE as the base image
FROM openjdk:8-jre-alpine

# Expose port 8080 for the application
EXPOSE 8080

# Copy the built JAR file into the container
COPY build/libs/*.jar /usr/app/app.jar

# Set the working directory inside the container
WORKDIR /usr/app

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
