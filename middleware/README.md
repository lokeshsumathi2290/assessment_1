To build tomcat image

# docker build -t middleware:0.1 .

To start a container

# docker run -d -p 8080:8080 --name=tomcat middleware:0.1
