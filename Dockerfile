# Use official PHP + Apache image
FROM php:8.2-apache

# Copy all project files into Apache root
COPY . /var/www/html/

# Enable Apache rewrite module (optional)
RUN a2enmod rewrite

# Expose Render's dynamic port
EXPOSE 10000

# Start Apache in foreground
CMD ["apache2-foreground"]
