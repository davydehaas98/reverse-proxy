FROM nginx:latest
WORKDIR .
ADD ./nginx.conf /etc/nginx/nginx.conf   # Copy nginx config file