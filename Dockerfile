# Use uma imagem base do Maven
FROM maven:latest as build

# Copie o código-fonte do aplicativo para o contêiner
WORKDIR /app
COPY pom.xml .
COPY src ./src

# Compile a aplicação usando o Maven
RUN mvn clean package

# Use uma imagem base do OpenJDK para a execução
FROM openjdk:11-jre-slim

# Copie o artefato JAR construído do estágio anterior para o contêiner
COPY --from=build /app/target/nome-do-seu-app.jar /app/app.jar

# Defina a porta em que a aplicação irá escutar (ajuste conforme necessário)
EXPOSE 8080

# Comando para iniciar a aplicação Spring Boot
CMD ["java", "-jar", "/app/app.jar"]
