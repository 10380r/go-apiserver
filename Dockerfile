FROM golang:latest
ENV GO111MODULE on

RUN go get -u github.com/go-swagger/go-swagger/cmd/swagger
ADD ./src/* /go/src/apiserver/

WORKDIR ./src/apiserver
