FROM alpine:latest

# Create app directory
WORKDIR /usr/src/app

RUN apk add --no-cache mongodb
RUN mkdir -p /data/db && \
    chown -R mongodb /data/db

EXPOSE 27017
EXPOSE 28017


#CMD [ "mongod", "--bind_ip_all", "--logpath", "/var/log/mongod.log"]
CMD ["ash", "/usr/src/app/run.sh"]
