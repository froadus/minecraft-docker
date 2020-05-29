# minecraft-docker
Create a simple minecraft server using docker

## Creating a new container
Run once
```sh
docker run -i --rm --mount type=bind,source="$(pwd)",target=/app -p 25565:25565 froadus/minecraft:latest java -Xms2G -Xmx2G -jar paper-325.jar
```

Always online
```sh
docker run -d --restart=always --mount type=bind,source="$(pwd)",target=/app -p 25565:25565 froadus/minecraft:latest java -Xms2G -Xmx2G -jar paper-325.jar
```
Run script in minecraft directory.
