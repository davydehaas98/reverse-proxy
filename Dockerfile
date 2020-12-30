FROM nginx:stable-alpine

COPY /etc/nginx/nginx.conf /etc/nginx/
COPY /var/www/error.html /var/www/

EXPOSE 80
EXPOSE 443
