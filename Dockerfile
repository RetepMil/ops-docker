FROM openjdk:17

CMD ["./mvnw", "clean", "package"]

ARG JAR_FILE=*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]

EXPOSE 8001
EXPOSE 8002