FROM centos:centos5
MAINTAINER Kim Wu <kimwu@live.hk>

VOLUME /var/lib/pgsql
COPY start.sh /

# install postgres 8.1.23
RUN yum -y update  \
	&& yum -y install postgresql-server \
	&& yum -y clean all \
	&& chmod +x /start.sh

EXPOSE 5432/tcp

CMD ["/start.sh"]
