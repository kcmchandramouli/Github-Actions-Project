FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

ENV APP_HOME /usr/java-bank/src/app

# COPY app/*.jar $APP_HOME/app.jar
COPY java-bank/target/bankapp-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]