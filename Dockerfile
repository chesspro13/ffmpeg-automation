#From ubuntu:20.04
FROM httpd:2.4
ARG DEBIAN_FRONENT=noninteractive



RUN DEBIAN_FRONTEND="noninteractive" apt update
RUN DEBIAN_FRONTEND="noninteractive" apt install -y ffmpeg \
	git  \
	apache2 && \
	apt clean


VOLUME ["/var/www/html"]

COPY wait.sh /data/wait.sh
WORKDIR "/var/www/html"

EXPOSE 80
EXPOSE 1935
EXPOSE 7080
ExpOSE 8080

#ENTRYPOINT ["bash", "/data/wait.sh"]
#MD ["git", "clone", "https://github.com/chesspro13/ffmpeg-automation"]
