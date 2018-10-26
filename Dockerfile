FROM openjdk:8-alpine

LABEL maintainer "lijinghua@wodnersoft.cn"

VOLUME [ "/tmp" ]

ADD target/demo-0.0.1-SNAPSHOT.jar demo.jar
RUN sh -c "touch /demo.jar"

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]