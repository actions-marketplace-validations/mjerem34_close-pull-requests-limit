FROM node:16.15.1

ADD run.sh /

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
