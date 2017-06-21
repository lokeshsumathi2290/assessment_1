### Docker file for setting up Middleware

FROM centos:6.9

MAINTAINER  Lokesh Sumathi "lokesh.s2290@gmail.com"

### Installing required packages

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6 \
    && yum update -y -q \
    && yum install -y -q vim \
                         wget \
                         java-1.8.0-openjdk \
    && wget -q http://redrockdigimark.com/apachemirror/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz \
    && tar -xzf apache-tomcat-7.0.78.tar.gz -C /opt/ \
    && rm -f apache-tomcat-7.0.78.tar.gz 

EXPOSE 8080

COPY ./conf/tomcat-users.xml /opt/apache-tomcat-7.0.78/conf/

CMD ["/opt/apache-tomcat-7.0.78/bin/catalina.sh","run"]
