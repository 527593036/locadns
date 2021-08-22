FROM centos:7

RUN yum install -y epel-release net-tools bind-utils telnet  && mkdir /etc/coredns

ADD coredns /localdns

EXPOSE 53 53/udp

ENTRYPOINT ["/localdns"]
