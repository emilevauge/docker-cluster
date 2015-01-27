FROM jpetazzo/dind
MAINTAINER emile@vauge.com

# add swarm
ADD https://github.com/docker/swarm/releases/download/v0.1.0-rc1/docker-swarm-Linux-x86_64 /usr/bin/swarm
RUN chmod +x /usr/bin/swarm

# add machine
ADD https://github.com/docker/machine/releases/download/v0.1.0-rc1/docker-machine_linux_amd64 /usr/bin/machine
RUN chmod +x /usr/bin/machine

VOLUME /root/.docker/

CMD ["bash"]
