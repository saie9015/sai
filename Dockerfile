FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD build/libs/SpringBootRestApiExample.jar SpringBootRestApiExample.jar
RUN sh -c 'touch /SpringBootRestApiExample.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /SpringBootRestApiExample.jar" ]
