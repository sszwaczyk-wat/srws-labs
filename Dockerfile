FROM ubuntu:18.04
MAINTAINER Sebastian Szwaczyk <sebastian.szwaczyk@wat.edu.pl>

RUN apt-get update && apt-get install -y vlc ekiga

RUN apt-get -y install sudo
RUN adduser --disabled-password --gecos '' student
RUN echo student:student | chpasswd
RUN usermod -a -G sudo student
RUN echo "student ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/student && chmod 0440 /etc/sudoers.d/student
RUN cp /etc/skel/.bashrc /home/student & cp /etc/skel/.profile /home/student
