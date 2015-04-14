#!/bin/sh
WORKDIR_MAIN=/home/newland/docker/servers/main
PORT_MAIN=25567
BUNGEE_PORT=25577
docker run -d --name bungee -p $BUNGEE_PORT:25577 -v /home/newland/docker/servers/bungee:/opt/data newland/bungee
docker run -d --name spigot --link bungee:bungee -p $PORT_MAIN:25565 -v /home/newland/docker/servers/main:/opt/data newland/spigot
