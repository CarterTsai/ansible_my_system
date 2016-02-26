FROM debian:jessie
MAINTAINER Carter TSAI <hamming1@gmail.com>

WORKDIR /root

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server
RUN mkdir -p /root/.ssh/
RUN mkdir /var/run/sshd
RUN chmod 0755 /var/run/sshd

ADD ./sshkey/id_rsa.pub /root/.ssh/id_rsa.pub
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
ADD ./config/run.sh /root/run.sh
RUN apt-get -y install python python-psycopg2

EXPOSE 22
EXPOSE 5432
EXPOSE 80

VOLUME /var/lib/postgresql/data

CMD ["/bin/bash", "run.sh"]
