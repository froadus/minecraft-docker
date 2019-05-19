# minecraft-docker
Create a simple minecraft server using docker

## Creating a new container
```sh
sudo docker run -d -v /path/to/server/folder:/data -p 25565:25565 -e XMS=2048M -e XMX=1024M -e JAR=server.jar -e URL='https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar' froadus/minecraft:latest
```
Replace `/path/to/server/folder` with your own path.
