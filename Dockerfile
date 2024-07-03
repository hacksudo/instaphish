# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install Apache2 and PHP
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php
RUN rm /var/www/html/* 
# Copy your local website files to the Apache default directory
COPY . /var/www/html/
RUN chmod -R 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html/
# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
