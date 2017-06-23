To build apache image

# docker build -t webserver:0.1 .

To start a container

# docker run -d -p 80:80 --name=apache webserver:0.1
