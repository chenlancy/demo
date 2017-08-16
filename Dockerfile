FROM openjdk:8-jdk-alpine
MAINTAINER JetQin "jq@gmail.com"
COPY /Users/Shared/Jenkins/Home/workspace/docker-demo.jar  app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]