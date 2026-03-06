FROM bellsoft/liberica-openjdk-alpine:8
VOLUME /tmp
ADD target/spring-petclinic-2.1.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
