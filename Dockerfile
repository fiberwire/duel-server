RUN add-apt-repository ppa:ubuntu-lxc/lxd-stable
RUN apt-get update
RUN apt-get install golang
RUN apt-get install git-all
RUN git clone https://github.com/fiberwire/duel-server.git
RUN go run duel-server/server.go
