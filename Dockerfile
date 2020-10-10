FROM ubuntu:18.04
MAINTAINER Sebastian Szwaczyk <sebastian.szwaczyk@wat.edu.pl>

RUN apt-get update && apt-get install -y vlc ekiga
