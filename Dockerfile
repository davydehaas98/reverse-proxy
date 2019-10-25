FROM nginx:latest
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./proxy-variables.conf /etc/nginx/proxy-variables.conf
