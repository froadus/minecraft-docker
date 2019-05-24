# minecraft-docker
Create a simple minecraft server using docker

## Creating a new container
```sh
docker run -d -v /path/to/server:/data -e USERNAME=admin -e PASSWORD=1234 -p 25565:25565 -p 3000:80 -e XMS=1024M -e XMX=2048M -e JAR=server.jar --restart unless-stopped froadus/minecraft:latest
```
Replace `/path/to/server` with your own path.
