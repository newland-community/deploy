#!/bin/sh
MINECRAFT_PORT=25567
BUNGEE_PORT=25577
docker run -d -P newland/spigot -p 25565:$MINECRAFT_PORT /opt/server/start.sh
docker run -d -P newland/bungee -p 25577:$BUNGEE_PORT /opt/bungee/start.sh
