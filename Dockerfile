FROM openjdk:17

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT java -jar -Dspring.profiles.active=$MESSAGE app.jar

EXPOSE ${DEPLOY_PORT}