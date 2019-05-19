FROM openjdk:8u201-jre-alpine

LABEL maintainer "froadus"

# Expose ports
EXPOSE 25565/tcp
EXPOSE 25565/udp

# Set working directory
WORKDIR /data

# Download minecraft server file from provided url and rename to $JAR
ENV URL='https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar'
ENV JAR=server.jar
RUN apk --no-cache add curl && \
    curl $URL --output $JAR

# Configure minecraft server
ENV XMS=1024M
ENV XMX=2048M
CMD java -Xms$XMS -Xmx$XMX -jar $JAR nogui
