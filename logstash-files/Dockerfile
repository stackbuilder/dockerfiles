FROM java:7

MAINTAINER hfranzen

ENV basedir /opt/logstash-1.4.2

RUN cd /opt/ && \
   curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \
   tar zxvf logstash-1.4.2.tar.gz && \
   rm logstash-1.4.2.tar.gz && \
   mkdir /etc/logstash

ADD server.conf /etc/logstash/server.conf

ENTRYPOINT /opt/logstash-1.4.2/bin/logstash -f /etc/logstash/server.conf 
   

