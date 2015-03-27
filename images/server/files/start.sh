#!/bin/sh

cd /opt/server/ && java -Xms512M -Xmx1024M -XX:MaxPermSize=128M -jar /opt/spigot/spigot*.jar --noconsole
