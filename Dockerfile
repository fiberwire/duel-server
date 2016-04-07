FROM ubuntu:latest

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:ubuntu-lxc/lxd-stable
RUN apt-get update
RUN apt-get install -y golang
RUN apt-get install -y git-all
RUN git clone https://github.com/fiberwire/duel-server.git

CMD go run duel-server/server.go
