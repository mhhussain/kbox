FROM centos:latest

# Create high-level app directory
RUN mkdir /root/kbox

# Copy in Kafka
COPY kafka_2.13-3.2.0.tgz /root/kbox/

COPY start-kafka-server.sh /root/kbox/

# Extract Kafka
RUN tar -xzf /root/kbox/kafka_2.13-3.2.0.tgz -C /root/kbox/

# Install java
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*
RUN yum install -y java

ENTRYPOINT ["sh", "/root/kbox/start-kafka-server.sh"]
