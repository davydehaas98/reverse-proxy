FROM nginx:alpine

RUN apk update && apk add openssl