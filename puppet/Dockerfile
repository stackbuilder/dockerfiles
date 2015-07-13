FROM centos

MAINTAINER hfranzen

EXPOSE 80

RUN  rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm && \
   yum install -y hostname && \
   yum install -y puppet

ADD *.pp /demo/
