# Step 1: Use Eclipse Temurin (more reliable than the old openjdk image)
FROM eclipse-temurin:17-jdk-jammy

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy the JAR file (Check your target folder name)
COPY target/payment-system-1.0-SNAPSHOT.jar app.jar

# Step 4: Expose port
EXPOSE 8080

# Step 5: Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
