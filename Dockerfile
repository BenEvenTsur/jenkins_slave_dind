FROM docker:19.03.13-dind

RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

COPY new-dockerd-entrypoint.sh /usr/local/bin/new-dockerd-entrypoint.sh

ENTRYPOINT ["new-dockerd-entrypoint.sh"]
    
