FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
# This matches the JAR name seen in your previous Jenkins log
COPY target/payment-system-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
