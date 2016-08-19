FROM httpd:1.0

MAINTAINER Jorge E. Alvarez P.

ENV DRUPAL drupal-8.1.8
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN rm -rf /var/www/*

#ADD https://ftp.drupal.org/files/projects/${DRUPAL}.tar.gz /var/www
COPY drupal-8.1.8.tar.gz /var/www
#ADD ./scripts/install-drush.sh /scripts/install-drush.sh
#ADD install-drupal-site.sh /scripts/install-drupal-site.sh
ADD ./scripts/virtual-host-drupal.conf /etc/apache2/sites-available/drupal.conf
ADD ./scripts/apache2-foreground.sh /scripts/apache2-foreground.sh
ADD ./scripts/install-drupal-site.sh /scripts/install-drupal-site.sh

RUN chmod +x /scripts/apache2-foreground.sh \
    #chmod +x /scripts/install-drush.sh \
    && chmod +x /scripts/install-drupal-site.sh \
    #&& /scripts/install-drush.sh \
    && bash /scripts/install-drupal-site.sh \
    && a2enmod rewrite \
    && a2dissite 000-default \
    && a2ensite drupal
    #&& chown -Rf www-data:www-data /var/www

CMD ["bash", "/scripts/apache2-foreground.sh"]
