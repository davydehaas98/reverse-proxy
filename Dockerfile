FROM nginx:latest
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./proxy-headers.conf /etc/nginx/proxy-headers.conf
