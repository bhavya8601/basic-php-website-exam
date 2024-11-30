# Use the latest Ubuntu base image
FROM ubuntu:latest

# Update the package list and install apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm /var/www/html/index.html  # Remove the default index.html

# Copy all files from the local directory to the container's /var/www/html/
COPY ./ /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

# Command to run Apache in the foreground (required for Docker container to keep running)
CMD ["apachectl", "-D", "FOREGROUND"]
