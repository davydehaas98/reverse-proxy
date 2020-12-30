FROM nginx:alpine

COPY /nginx /etc/nginx/
COPY /html /usr/share/nginx/html/

EXPOSE 80
EXPOSE 443
