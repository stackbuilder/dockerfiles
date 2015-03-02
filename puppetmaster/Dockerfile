FROM centos:centos7
MAINTAINER Harry Franzen

# Install the repository for Puppet
RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs && \
    rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

RUN yum -y install hostname

# now install Puppet
RUN yum -y install puppet

# and the Puppet server
RUN yum -y install puppet-server

# Add de puppet.conf file
ADD puppet.conf /etc/puppet/puppet.conf

# The place where the Puppet conf files are located on the host
VOLUME ["/opt/puppet"]

# Expose the Puppet server port
EXPOSE 8140

# Start the Puppet server 
ENTRYPOINT [ "/usr/bin/puppet", "master", "--no-daemonize", "--verbose" ]

 
