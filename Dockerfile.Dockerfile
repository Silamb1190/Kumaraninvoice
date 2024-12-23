# Use an official PHP image as a base image
FROM php:8.0-apache

# Enable mod_rewrite (required for many PHP applications)
RUN a2enmod rewrite

# Set the working directory to the app directory
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html/

# Expose port 80 to access the app via the browser
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]