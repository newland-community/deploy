FROM base/archlinux
MAINTAINER Frederic Bouquet bouquet.frederic@gmail.com

RUN pacman -Sy 
RUN pacman -S pacman-mirrorlist --noconfirm
RUN cut -b2- /etc/pacman.d/mirrorlist.pacnew > /etc/pacman.d/mirrorlist.tmp
RUN rankmirrors /etc/pacman.d/mirrorlist.tmp | tee /etc/pacman.d/mirrorlist
RUN pacman -Sc --noconfirm
RUN pacman -S pacman archlinux-keyring --noconfirm
RUN pacman-db-upgrade
RUN pacman -Syu jdk7-openjdk --noconfirm --ignore filesystem
RUN mkdir -p /opt/bungeecord && curl -o /opt/bungeecord/BungeeCord.jar http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
COPY files/start.sh /opt/bungeecord/ 
COPY files/config.yml /opt/bungeecord/
RUN chmod +x /opt/bungeecord/start.sh

EXPOSE 25577

CMD ["/opt/bungeecord/start.sh"]
