FROM nginx:stable-alpine

ADD ./etc/nginx/ /etc/nginx
ADD ./var/www/ /var/www

EXPOSE 80
EXPOSE 443
