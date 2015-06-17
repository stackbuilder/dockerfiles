FROM centos

MAINTAINER hfranzen

ENV basedir /opt/logstash-1.4.2

RUN yum install -y java-1.7.0-openjdk && \
   yum install -y tar && \
   yum install -y epel-release && \
   yum install -y nginx

RUN cd /opt/ && \
   curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \
   tar zxvf logstash-1.4.2.tar.gz && \
   rm -rf logstash-1.4.2.tar.gz && \
   mkdir /etc/logstash

ADD server.conf /etc/logstash/server.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD startup.sh /startup.sh 
ADD nginx /opt/logstash-1.4.2/patterns/nginx

ENTRYPOINT sh /startup.sh
   

