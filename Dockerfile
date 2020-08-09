FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD /build/libs/simple-api-example-1.0-SNAPSHOT.jar simple-api-example-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "simple-api-example-1.0-SNAPSHOT.jar"]