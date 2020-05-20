FROM golang:latest
ENV GO111MODULE on

RUN go get -u github.com/go-swagger/go-swagger/cmd/swagger
ADD ./swagger.yml /go/src/apiserver/
ADD ./go.mod /go/src/apiserver/

WORKDIR ./src/apiserver
RUN swagger generate server -f swagger.yml && \
    go get -u -f ./...
