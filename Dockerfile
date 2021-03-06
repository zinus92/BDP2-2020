FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y apache2
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl","-D","FOREGROUND"]
