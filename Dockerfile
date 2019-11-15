FROM nginx:latest

ADD ./nginx.conf /etc/nginx/nginx.conf

ADD ./proxy-settings.conf /etc/nginx/proxy-settings.conf
ADD ./security.conf /etc/nginx/security.conf
ADD ./compression.conf /etc/nginx/compression.conf
