FROM trafex/alpine-nginx-php7
LABEL org.opencontainers.image.source https://github.com/davehope/alpine-nginx-php
USER root
RUN apk --no-cache add php8-ldap php8-pcntl php8-pdo php8-soap php8-pdo_sqlite php8-posix ffmpeg
USER nobody
WORKDIR /var/www/html
#COPY --chown=nobody src/ /var/www/html/
EXPOSE 8080
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
