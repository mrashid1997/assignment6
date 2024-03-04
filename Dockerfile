# getting base image ubuntu
FROM ubuntu:latest

# Install required package
RUN apt-get update && apt-get install -y nginx

# Enbironment variables
ENV PORT 80
ENV DB_HOST localhost
ENV DB_NAME my_database
ENV DB_USER my_user
ENV DB_PASSWORD my_password
COPY . /var/www/html
CMD ["nginx", "-g", "daemon off;"]