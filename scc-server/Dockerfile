FROM centos

MAINTAINER hfranzen

ENV basedir /

RUN yum install -y tar && \
   yum install -y epel-release && \
   curl -O http://sourceforge.net/projects/sysconfcollect/files/scc-srv/scc-srv_1.12.70/scc-srv-1.12.70-1.noarch.rpm && \
   rpm -ihv scc-srv-1.12.70-1.noarch.rpm

