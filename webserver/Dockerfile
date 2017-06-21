### Docker file for setting up Webserver 

FROM centos:6.9

MAINTAINER  Lokesh Sumathi "lokesh.s2290@gmail.com"

### Installing required packages

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6 \
    && yum update -y -q \
    && yum install -y -q vim \
                    wget \
                    httpd \
                    netstat 

COPY ./conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./conf/start.sh /

RUN chmod 755 /start.sh

EXPOSE 80

CMD ["sh","/start.sh"]
