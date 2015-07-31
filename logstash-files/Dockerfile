FROM java:7

MAINTAINER hfranzen

ENV basedir /opt/logstash-1.4.2

RUN cd /opt/ && \
   curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \
   tar zxvf logstash-1.4.2.tar.gz && \
   rm logstash-1.4.2.tar.gz && \
   mkdir /etc/logstash && \
   cd /etc/logstash && \
   curl -O http://softlayer.noudat.nl:81/GeoLiteCity.dat

ADD conf.d /etc/logstash/conf.d
ADD server.conf /etc/logstash/server.conf
ADD grok-patterns.postfix /etc/logstash/grok-patterns.postfix
ADD grok-patterns.httpd /etc/logstash/grok-patterns.httpd


ENTRYPOINT /opt/logstash-1.4.2/bin/logstash -f /etc/logstash/conf.d 
   

