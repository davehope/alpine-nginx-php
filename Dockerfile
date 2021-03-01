FROM trafex/alpine-nginx-php7
USER root
RUN apk --no-cache add php7-ldap php7-pcntl php7-pdo php7-soap php7-pdo_sqlite php7-posix ffmpeg
USER nobody
WORKDIR /var/www/html
#COPY --chown=nobody src/ /var/www/html/
EXPOSE 8080
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
