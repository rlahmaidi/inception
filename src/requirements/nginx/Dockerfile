FROM debian:buster

RUN apt-get update && \
	apt-get install vim openssl nginx -y 
ADD ./conf/default /etc/nginx/sites-available/
ADD ./conf/domain.crt /etc/nginx/sites-available/
ADD ./conf/domain.key /etc/nginx/sites-available/
CMD ["nginx", "-g", "daemon off;"]