FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y golang
RUN apt-get install -y git
RUN git clone https://github.com/fiberwire/duel-server.git

CMD go run duel-server/server.go
