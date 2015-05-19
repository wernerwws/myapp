# get the latest offical Apache webserver container
FROM httpd:latest

# copy our website into the right directory
COPY index.html /usr/local/apache2/htdocs/

# set ownerships accordingly
RUN chown -R www-data:www-data /usr/local/apache2/htdocs/*

# expose Port 80
EXPOSE 80

# finally run Apache in foreground mode to be able to inspect the logs with "docker logs"
CMD ["httpd-foreground"]