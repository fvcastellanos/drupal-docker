#!/bin/sh
set -e

tar --directory=/var/www -ixvzf /var/www/${DRUPAL}.tar.gz

mv /var/www/${DRUPAL} /var/www/drupal
