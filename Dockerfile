FROM ubuntu
MAINTAINER "varshini@evoke.com"
RUN apt-get update
RUN apt-get install nginx -y
ENV Host varshini
COPY index.html /var/www/html/index
ENTRYPOINT service nginx restart && bash
EXPOSE 83/tcp
WORKDIR /var/www/html
VOLUME /var/www/html
