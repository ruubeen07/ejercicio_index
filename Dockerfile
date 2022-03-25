FROM quay.io/centos/centos:stream8

MAINTAINER Ruben Fraile Sanchon <esther.andres@usal.es>

RUN dnf clean all && dnf install -y nginx && dnf clean all

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
