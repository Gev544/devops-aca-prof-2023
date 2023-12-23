FROM ubuntu:latest

RUN apt-get update && \
    apt-get install nginx -y && \
    rm -f /etc/nginx/sites-enabled/default

COPY nginx.conf /etc/nginx/sites-enabled/nginx.conf


CMD ["nginx", "-g", "daemon off;"]
