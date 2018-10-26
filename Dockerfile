FROM openjdk:8-alpine

ARG jar_path

LABEL maintainer "lijinghua@wodnersoft.cn"

VOLUME [ "/tmp" ]

ADD ${jar_path}/target/demo-0.0.1-SNAPSHOT.jar demo.jar
RUN bash -c "touch /demo.jar"

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]