FROM docker:19.03.13-dind

RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN cd /opt && \
    wget https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/4.6/remoting-4.6.jar && \
    mv remoting-4.6.jar agent.jar

COPY new-dockerd-entrypoint.sh /usr/local/bin/new-dockerd-entrypoint.sh

ENTRYPOINT ["new-dockerd-entrypoint.sh"]
    
