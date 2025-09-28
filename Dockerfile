# Debian Bullseye
FROM debian:bullseye AS deb1
RUN apt update && \
    apt install -y python3 python3-pip ansible && \
    apt install sudo -y && \
    apt install vim -y && \
    apt install git -y && \
    apt install -y openssh-server && \
    sed -i "s/#PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config && \
    service ssh restart && \
    useradd -m -s "/bin/bash" -c "manage-node"  debian && \
    echo "debian:debian" | chpasswd && \
    usermod -aG sudo debian && \
    su - debian -c 'ssh-keygen -t rsa -b 2048 -N "" -f ~/.ssh/id_rsa -q' 
CMD ["/bin/bash","-c","service ssh start && service ssh restart && sleep infinity"]

# Ubuntu 22.04
FROM ubuntu:22.04 AS ubuntu
RUN apt update && \
    apt install -y python3 python3-pip && \
    apt install sudo && \
    apt install -y openssh-server && \
    sed -i "s/#PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config && \
    service ssh restart && \
    useradd -m -s "/bin/bash" -c "manage-node"  ubuntu && \
    echo "ubuntu:ubuntu" | chpasswd && \
    usermod -aG sudo ubuntu && \
    su - ubuntu -c 'ssh-keygen -t rsa -b 2048 -N "" -f ~/.ssh/id_rsa -q'
CMD ["/bin/bash","-c","service ssh start && service ssh restart && sleep infinity"]

# Debian Bullseye
FROM debian:bullseye AS deb2
RUN apt update && \
    apt install -y python3 python3-pip && \
    apt install sudo && \
    apt install -y openssh-server && \
    sed -i "s/#PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config && \
    service ssh restart && \
    useradd -m -s "/bin/bash" -c "manage-node" debian && \
    echo "debian:debian" | chpasswd && \
    usermod -aG sudo debian && \
    su - debian -c 'ssh-keygen -t rsa -b 2048 -N "" -f ~/.ssh/id_rsa -q'
CMD ["/bin/bash","-c","service ssh start && service ssh restart && sleep infinity"]