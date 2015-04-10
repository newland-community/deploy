FROM base/archlinux
MAINTAINER Frederic Bouquet bouquet.frederic@gmail.com

RUN pacman -Sy
RUN pacman -S pacman-mirrorlist --noconfirm
RUN cut -b2- /etc/pacman.d/mirrorlist.pacnew > /etc/pacman.d/mirrorlist.tmp
RUN rankmirrors /etc/pacman.d/mirrorlist.tmp | tee /etc/pacman.d/mirrorlist
RUN echo SigLevel = Never >> /etc/pacman.conf
RUN pacman -Sc --noconfirm
RUN pacman -S pacman archlinux-keyring --noconfirm
RUN pacman-db-upgrade
RUN pacman -Syu --noconfirm
RUN pacman -S jdk7-openjdk vim nmap git fontconfig --noconfirm --ignore filesystem
RUN mkdir -p /opt/spigot && curl -o /opt/spigot/BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
RUN cd /opt/spigot/ && java -jar BuildTools.jar
RUN mkdir /opt/server/
COPY files/start.sh /opt/server/
RUN chmod +x /opt/server/start.sh
COPY files/eula.txt /opt/server/
COPY files/server.properties /opt/server/

EXPOSE 25565

CMD ["/opt/server/start.sh"]
