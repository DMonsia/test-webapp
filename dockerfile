FROM ubuntu
MAINTAINER Monsia (monsia.dougban@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install nginx -y nginx git
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/cloudacademy/static-website-example.git /var/www/html
EXPOSE 80
# ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
