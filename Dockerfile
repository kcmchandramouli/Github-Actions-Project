# FROM eclipse-temurin:17-jdk-alpine
    
# EXPOSE 8080

# ENV APP_HOME /usr/java-bank/src/app

# COPY *.jar $APP_HOME/app.jar

# WORKDIR $APP_HOME

# CMD ["java", "-jar", "app.jar"]

# Use Eclipse Temurin JDK 17 as the base image
# FROM eclipse-temurin:17-jdk-alpine
FROM openjdk:17-alpine

# Expose the application port
EXPOSE 8080

# Set the application home directory as an environment variable
ENV APP_HOME /usr/src/app

# Create the application directory inside the container
WORKDIR $APP_HOME

# Copy the JAR file from the local target folder to the container
COPY java-bank/target/*.jar $APP_HOME/app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]