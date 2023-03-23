FROM openjdk:17

ARG JAR_FILE=target/*.jar
ARG DEPLOY_PORT
ARG MESSAGE

COPY ${JAR_FILE} app.jar

# ENTRYPOINT ["java", "-jar", "app.jar"]
ENTRYPOINT echo ${DEPLOY_PORT} && echo ${MESSAGE}
# ENTRYPOINT java -jar app.jar -Dspring-boot.run.arguments="--server.port=${DEPLOY_PORT} --message='${MESSAGE}'"

EXPOSE ${DEPLOY_PORT}