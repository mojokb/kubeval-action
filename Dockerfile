FROM alpine:latest as builder

RUN apk add --no-cache git wget
RUN wget https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz
RUN tar xf kubeval-linux-amd64.tar.gz
RUN cp kubeval /usr/bin/kubeval
RUN chmod +x /usr/bin/kubeval 

FROM alpine:latest as production

LABEL "maintainer"="amaramusic@gmail.com <amaramusic@gmail.com>"

COPY --from=builder /usr/bin/kubeval /usr/bin/kubeval

WORKDIR /data

ENTRYPOINT ["kubeval"]

CMD ["--version"]
