FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
ADD cert.pem /etc/nginx/nginx.conf.d/cert.pem
ADD key.pem /etc/nginx/nginx.conf.d/key.pem
RUN update-ca-certificates