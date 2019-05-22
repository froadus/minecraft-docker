FROM openjdk:8u201-jre-alpine

EXPOSE 25565

COPY wrapper.expect /exp/

WORKDIR /data
RUN apk --no-cache add expect

CMD ["expect", "/exp/wrapper.expect", "java", "-Xms1024M", "-Xmx2048M", "-jar", "server.jar", "nogui"]