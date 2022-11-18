FROM alpine:latest

ADD run.sh /

RUN apk add --no-cache jq curl

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
