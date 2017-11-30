FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /build/libs/jalgoarena-auth-1.0.14.jar app.jar
EXPOSE 9999
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=dev","-jar","/app.jar"]