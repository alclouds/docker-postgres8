FROM centos:centos5
MAINTAINER Kim Wu <kimwu@live.hk>

VOLUME /var/lib/pgsql

# install postgres 8.1.23
RUN yum -y update  \
	&& yum -y install postgresql-server \
	&& yum -y clean all

EXPOSE 5432/tcp

CMD ["/bin/bash"]
