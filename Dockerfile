FROM openjdk:17

COPY . /app

WORKDIR /app

CMD ["./mvnw", "clean", "package"]

ARG JAR_FILE_PATH=target/*.jar

# COPY ${JAR_FILE_PATH} /app/app.jar

ENTRYPOINT ["java", "-jar", "./target/ops_docker_proj-0.0.1-SNAPSHOT.jar"]

EXPOSE 8001
EXPOSE 8002