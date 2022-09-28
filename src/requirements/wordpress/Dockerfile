FROM debian:buster

RUN apt-get update && \
	apt-get install wget -y && \
	apt-get install unzip vim  -y && \
	apt-get install php-fpm php-mysql -y 



RUN cd /tmp && wget https://wordpress.org/latest.zip 
RUN mkdir -p /var/www/html && unzip -d /var/www/html/ /tmp/latest.zip
RUN mv /var/www/html/wordpress/wp-config-sample.php  /var/www/html/wordpress/wp-config.php
ADD ./conf/wp-config.php  /var/www/html/wordpress/wp-config.php
ADD ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN chown www-data:www-data -R /var/www/html/wordpress
RUN cd /var/www/html/wordpress && touch a.html
RUN service php7.3-fpm start
ENTRYPOINT  [ "/usr/sbin/php-fpm7.3","-F" ]
