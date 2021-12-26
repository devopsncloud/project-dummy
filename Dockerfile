
FROM centos:latest

MAINTAINER srikanth.sama678@gmail.com

RUN yum install httpd -y \
    zip \
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/drinker.zip /var/www/html

WORKDIR /var/www/html
RUN unzip drinker.zip
RUN cp -rvf drinker/* .

RUN rm -rf drinker.zip


CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
EXPOSE 80
