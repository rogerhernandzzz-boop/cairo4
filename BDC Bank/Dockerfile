FROM php:8.2-apache

# Copia todos los archivos del proyecto al directorio raíz de Apache
COPY . /var/www/html/

# Habilita el módulo de reescritura (opcional)
RUN a2enmod rewrite

# Cambia los permisos para que Apache pueda escribir si es necesario
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80
