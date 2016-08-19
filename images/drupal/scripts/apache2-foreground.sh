#!/bin/sh
set -e

# Changing the owner for all files created on the installation
chown -Rf www-data:www-data /var/www/ 

exec /usr/sbin/apache2ctl -D FOREGROUND
