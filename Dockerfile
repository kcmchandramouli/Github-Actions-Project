FROM eclipse-temurin:17-jdk-alpine

# Expose the application port
EXPOSE 8080

# Create the application directory
ENV APP_HOME /usr/java-bank/src/app

# Set the working directory
WORKDIR $APP_HOME

# Copy the JAR file from the correct path to the container
COPY java-bank/target/*.jar .   
#$APP_HOME/app.jar

RUN ls -la 

# Command to run the application
CMD ["java", "-jar", "app.jar"]