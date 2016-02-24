FROM debian:jessie
MAINTAINER Carter TSAI <hamming1@gmail.com>

WORKDIR /root

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server
RUN mkdir -p /root/.ssh

ADD ./sshkey/id_rsa.pub /root/.ssh
ADD ./config/run.sh run.sh

CMD ["/root/run.sh"]
