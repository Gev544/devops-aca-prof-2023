FROM ubuntu:latest

RUN apt-get update && \
    apt-get install nginx -y

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
