FROM centos

MAINTAINER hfranzen

ENV basedir /

RUN yum install -y tar && \
   yum install -y epel-release && \
   yum install -y nginx && \
   curl -O https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz 

RUN tar -xvzf kibana-3.1.0.tar.gz
RUN mkdir -p /var/www/ && \
   cp -R kibana-3.1.0/ /var/www/kibana

ADD config.js /var/www/kibana/config.js
ADD nginx.conf /etc/nginx/nginx.conf
ADD htpasswd /etc/nginx/.htpasswd
ENTRYPOINT  /usr/sbin/nginx -g "daemon off;"
