FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY /etc/letsencrypt/live/ /etc/letsencrypt/live/