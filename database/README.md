To build mysql image

# docker build -t database:0.1 .

To start a container

# docker run -d -p 3306:3306 --name=mysql database:0.1


