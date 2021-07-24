FROM alpine:3.14

RUN apk add --no-cache rsync

WORKDIR /app

COPY ./backup.sh .

ENTRYPOINT ["backup.sh"]