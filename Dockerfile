FROM nginx:latest
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./proxy-settings.conf /etc/nginx/proxy-settings.conf
