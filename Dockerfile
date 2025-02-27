# Use the latest WordPress with Apache
FROM wordpress:6.7.2-apache

# Copy all files from the current directory to /var/www/html in the container
COPY . /var/www/html

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html/

# Start Apache when the container runs
ENTRYPOINT ["apache2-foreground"]
