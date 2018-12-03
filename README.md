# amazonlinux2-httpd
AmazonLinux 2 OS Dockerfile for Apache httpd + mod_ssl

# Build
Copy the sources down and do the build

# docker build --rm -t <username>/httpd .
Usage
To assign a random port that maps to port 80 on the container:

# docker run -d -p 8080 <username>/httpd

To the port that the container is listening on:

# docker ps

Test
# curl http://localhost:80
