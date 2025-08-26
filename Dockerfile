# Use official PHP + Apache image
FROM php:8.2-apache

# Copy all project files into Apache root
COPY . /var/www/html/

# Enable Apache rewrite module
RUN a2enmod rewrite

# Make sure permissions are okay (optional, helps assets load)
RUN chown -R www-data:www-data /var/www/html

# Expose Render's dynamic port
EXPOSE 10000

# Start Apache in foreground
CMD ["apache2-foreground"]
