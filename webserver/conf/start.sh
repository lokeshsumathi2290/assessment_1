#/usr/bin/env bash
###Replacing IP
a=`echo $ALI_TOMCAT_PORT_8080_TCP_ADDR`
sed -i s/'<ALI_TOMCAT_PORT_8080_TCP_ADDR>'/$a/g  /etc/httpd/conf/httpd.conf

###Starting Apache

/usr/sbin/httpd -DFOREGROUND
