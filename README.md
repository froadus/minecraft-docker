# minecraft-docker
Create a simple minecraft server using docker

## Creating a new container
```sh
docker run -i -v /path/to/server/folder:/data -p 25565:25565 froadus/minecraft:latest
```
Replace `/path/to/server/folder` with your own path.
