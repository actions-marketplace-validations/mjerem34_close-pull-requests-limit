FROM node:16.15.1

ADD run.sh /

RUN npm install -g node-jq

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
