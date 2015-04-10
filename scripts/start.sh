#!/bin/sh
MINECRAFT_PORT=25567
BUNGEE_PORT=25577
docker rm bungee
docker rm spigot
docker run -d --name bungee -p $BUNGEE_PORT:25577 newland/bungee
docker run -d --name spigot --link bungee:bungee -p $MINECRAFT_PORT:25565 newland/spigot
