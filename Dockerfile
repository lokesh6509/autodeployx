FROM openjdk:17
COPY target/myweb.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

