#!/usr/bin/env bash
###To avoid dos issue
cat file_name.sh | tr -d '\r' > file_name.sh.new

cat ../database/conf/config_mysql.sh | tr -d '\r' > ../database/conf/config_mysql.sh.new
cat ../database/conf/start.sh | tr -d '\r' > ../database/conf/start.sh.new
cat ../webserver/conf/start.sh | tr -d '\r' > ../webserver/conf/start.sh.new

rm -f ../database/conf/config_mysql.sh ../database/conf/start.sh ../webserver/conf/start.sh

mv ../database/conf/config_mysql.sh.new ../database/conf/config_mysql.sh
mv ../database/conf/start.sh.new ../database/conf/start.sh
mv ../webserver/conf/start.sh.new ../webserver/conf/start.sh


###Docker Build and Run Commands
database_build="database:0.1"
middleware_build="middleware:0.1"
webserver_build="webserver:0.1"

docker build -t $database_build ../database/
docker build -t $middleware_build ../middleware/
docker build -t $webserver_build ../webserver/

docker rm -f mysql tomcat apache

docker run -d -p 3306:3306 --name=mysql $database_build
docker run -d -p 8080:8080 --name=tomcat --link=mysql:ali-mysql $middleware_build
docker run -d -p 80:80 --name=apache --link=tomcat:ali-tomcat $webserver_build
