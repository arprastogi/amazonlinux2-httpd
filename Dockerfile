FROM amazonlinux:2
MAINTAINER Arpit Rastogi <frds.arastogi@gmail.com>
LABEL Vendor="Amazon Linux 2" \
      Version=2.0.20181114


RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd mod_ssl && \
    yum clean all && \
    rm -rf /etc/httpd/conf.d/ssl.conf

EXPOSE 80 443

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
