FROM hfranzen/base

MAINTAINER hfranzen

RUN yum -y install epel-release && \
   yum -y install collectd 

ADD collectd.conf /etc/collectd.conf

ENTRYPOINT collectd -t 

CMD /etc/collectd.conf


