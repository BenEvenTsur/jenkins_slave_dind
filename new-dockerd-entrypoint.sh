#!/bin/sh

java -jar /opt/agent.jar -jnlpUrl http://$JENKINS_ADDRESS/computer/$AGENT_NAME/slave-agent.jnlp -secret $JENKINS_SECRET -workDir "$HOME_DIR" &

dockerd-entrypoint.sh
