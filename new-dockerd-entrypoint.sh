#!/bin/sh

java -jar /opt/agent.jar -jnlpUrl $JNLPURL -secret $JENKINS_SECRET -workDir "$HOME_DIR"

dockerd-entrypoint.sh
