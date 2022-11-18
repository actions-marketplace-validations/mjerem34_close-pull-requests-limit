FROM node:16.15.1

ADD run.sh /

RUN apt-get install -y jq
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
