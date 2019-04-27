FROM alpine:latest

RUN apk add --no-cache mongodb
RUN mkdir -p /data/db && \
    chown -R mongodb /data/db

EXPOSE 27017
EXPOSE 28017


CMD [ "mongod", "--bind_ip_all", "--fork", "--logpath", "/var/log/mongod.log"]
#CMD ["ash", "run.sh"]