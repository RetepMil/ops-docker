FROM openjdk:17

ARG JAR_FILE=target/*.jar
ARG SPRING_OPT=--spring.application.json='{"my":{"name":"test"}}'

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "app.jar", ${SPRING_OPT}]

EXPOSE 8001
EXPOSE 8002