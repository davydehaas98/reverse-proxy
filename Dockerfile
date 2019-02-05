FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY ../key.pem .
COPY ../cert.pem .