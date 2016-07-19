FROM pmovil/noarch-rpm-builder:latest

RUN yum install -y php  

WORKDIR /root

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php composer-setup.php --install-dir=/usr/local/bin --filename=composer

WORKDIR /root/rpmbuild/SPECS