# Use the latest WordPress with Apache
FROM wordpress:6.7.2-apache

# Copy all files from the current directory to /var/www/html in the container
COPY . /home/site/wwwroot

# Set proper permissions
RUN chown -R www-data:www-data /home/site/wwwroot

# Start Apache when the container runs
ENTRYPOINT ["apache2-foreground"]
