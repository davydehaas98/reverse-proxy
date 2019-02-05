FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
RUN apk update && apk add openssl
RUN openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365

RUN update-ca-certificates