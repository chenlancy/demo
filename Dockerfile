FROM openjdk:8-jdk-alpine
MAINTAINER JetQin 
ADD target/demo-0.0.1.jar  app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]