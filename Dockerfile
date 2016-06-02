FROM phusion/baseimage
MAINTAINER Chris Hirsch <chris@base2technology.com>

RUN apt-add-repository -y ppa:brightbox/ruby-ng && \

        apt-get update \
	&& apt-get install -y npm php-pear python-setuptools rpm ruby2.2 ruby2.2-dev\
	&& rm -rf /var/lib/apt/lists/* \
        
        gem install fpm

CMD [ "fpm" ]
