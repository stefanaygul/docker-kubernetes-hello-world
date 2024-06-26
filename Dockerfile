FROM openjdk:8-jdk-alpine
RUN echo "test"
RUN echo "deneme"
ENV PORT 8080
EXPOSE 8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]