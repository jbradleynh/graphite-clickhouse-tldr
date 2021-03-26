FROM golang:alpine as builder

WORKDIR /go/src/github.com/go-graphite/

RUN apk --no-cache add make gcc git

RUN git clone https://github.com/go-graphite/carbonapi.git && \
    cd ./carbonapi && \
    make nocairo

FROM alpine:latest

WORKDIR /

RUN apk --no-cache add ca-certificates

COPY --from=builder /go/src/github.com/go-graphite/carbonapi/carbonapi ./usr/bin/carbonapi

CMD ["carbonapi", "-config", "/etc/carbonapi.yml"]