# 1. Koristimo osnovnu JDK sliku
FROM eclipse-temurin:17-jdk-alpine

# 2. Postavljamo radni direktorijum u kontejneru
WORKDIR /app

# 3. Kopiramo JAR fajl iz target foldera u kontejner
COPY target/IT355-L13-cardatabase-backend-0.0.1-SNAPSHOT.jar app.jar

# 4. Otvaramo port aplikacije
EXPOSE 8080

# 5. Pokrećemo Spring Boot aplikaciju
ENTRYPOINT ["java", "-jar", "app.jar"]
