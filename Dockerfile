FROM eclipse-temurin:17-jdk-alpine

# Expose the application port
EXPOSE 8080

# Create the application directory
ENV APP_HOME /usr/java-bank/src/app

# Copy the JAR file from the correct path to the container
COPY java-bank/target/*.jar $APP_HOME/app.jar   
#$APP_HOME/app.jar

RUN ls -la

# Set the working directory
WORKDIR $APP_HOME

# Command to run the application
CMD ["java", "-jar", "app.jar"]