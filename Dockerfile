FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY key.pem /etc/nginx/conf.d/key.pem
COPY cert.pem /etc/nginx/conf.d/cert.pem