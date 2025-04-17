FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

ENV APP_HOME /usr/java-bank/src/app

COPY java-bank/target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
