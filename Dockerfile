# Use the latest WordPress with Apache
FROM wordpress:6.7.2-apache

# Copy custom HTML/WordPress files into the container
COPY html /var/www/html

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html/

# Start Apache when the container runs
ENTRYPOINT ["apache2-foreground"]