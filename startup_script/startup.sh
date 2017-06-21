#!/usr/bin/env bash

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
