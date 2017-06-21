### Docker file for setting up Database

FROM centos:6.9

MAINTAINER  Lokesh Sumathi "lokesh.s2290@gmail.com"

### Installing required packages

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6 \
    && yum -y -q update \
    && yum -y -q install epel-release \
    && yum clean all \
    && yum -y -q install mysql-server mysql pwgen supervisor bash-completion psmisc net-tools

ADD ./conf/start.sh /start.sh
ADD ./conf/config_mysql.sh /config_mysql.sh
ADD ./conf/supervisord.conf /etc/supervisord.conf

RUN chmod 755 /start.sh
RUN chmod 755 /config_mysql.sh
RUN /config_mysql.sh

EXPOSE 3306

CMD ["/bin/bash", "/start.sh"]
