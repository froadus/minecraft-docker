FROM openjdk:8u201-jre-alpine

LABEL maintainer "froadus"

# Expose ports
EXPOSE 25565/tcp
EXPOSE 25565/udp

# Set working directory
WORKDIR /data

# Download server file if provided
RUN if [[ -n "$URL" ]] ; then curl $URL --output $JAR ; else echo "No download url provided, continuing..." ; fi

# Configure minecraft server
CMD java -Xmx$XMX -Xms$XMS -jar $JAR nogui
