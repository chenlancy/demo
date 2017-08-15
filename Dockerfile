FROM openjdk:8-jdk-alpine
MAINTAINER JetQin "jq@gmail.com"
ADD target/${project.build.finaName}.jar  app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]