# Etapa de compilación
FROM maven:3.8.4-openjdk-17 AS builder
WORKDIR /spring-boot
COPY ./spring-boot .
RUN mvn install
RUN mvn -B -DskipTests clean package

# Etapa de producción
FROM openjdk:17-slim
WORKDIR /app
COPY --from=builder /spring-boot/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
