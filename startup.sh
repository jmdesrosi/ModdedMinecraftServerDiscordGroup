su steve -c "cd /src/minecraft/world/"
su steve -c "wget https://media.forgecdn.net/files/2690/320/FTB+Presents+Direwolf20+1.12-1.12.2-2.5.0-Server.zip"

docker run -d -p 25565:25565 -e EULA=TRUE -e INIT_MEMORY=8g -e MAX_MEMORY=14g -e USE_AIKAR_FLAGS=true -e VIEW_DISTANCE=6 -e GUI=FALSE -e TYPE=CURSEFORGE -e CF_SERVER_MOD=FTB+Presents+Direwolf20+1.12-1.12.2-2.5.0-Server.zip -v /src/minecraft/world:/data --name mc itzg/minecraft-server:java8-multiarch
