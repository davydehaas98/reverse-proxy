FROM nginx:stable-alpine

COPY /etc/nginx/. /etc/nginx
COPY /var/www/. /var/www

EXPOSE 80
EXPOSE 443
