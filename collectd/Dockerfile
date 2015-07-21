FROM hfranzen/base

MAINTAINER hfranzen

RUN yum -y install epel-release && \
   yum -y install collectd 

ADD collectd.conf /etc/collectd.conf

ENTRYPOINT /usr/sbin/collectd -f -C /etc/collectd.conf




