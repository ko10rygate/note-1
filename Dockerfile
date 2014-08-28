FROM yujilow/node

RUN yum -y install haproxy
RUN cp /etc/haproxy/haproxy.cfg{,.orig}

