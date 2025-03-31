FROM eclipse-temurin:17-jdk-alpine

# Expose the application port
EXPOSE 8080

# Create the application directory
ENV APP_HOME /usr/java-bank/src/app

# Set the working directory
WORKDIR /usr/java-bank

# Copy the source code to the container
COPY . ./

# Build the application
RUN ./mvnw clean package -DskipTests

# Copy the JAR file to the application directory
COPY *.jar $APP_HOME/app.jar

# Set the working directory
WORKDIR $APP_HOME

# Command to run the application
CMD ["java", "-jar", "app.jar"]