FROM hfranzen/base

MAINTAINER hfranzen

EXPOSE 5601
ENV basedir /opt/kibana

RUN curl -O https://download.elasticsearch.org/kibana/kibana/kibana-4.0.1-linux-x64.tar.gz && \
   tar zxvf kibana-4.0.1-linux-x64.tar.gz && \
   mv kibana-4.0.1-linux-x64 /opt/kibana && \
   rm kibana-4.0.1-linux-x64.tar.gz

ADD kibana.yml /opt/kibana/config/kibana.yml

ENTRYPOINT /opt/kibana/bin/kibana
