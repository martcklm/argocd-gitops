FROM openjdk:17-jdk-slim
COPY target/java-app-1.0-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]