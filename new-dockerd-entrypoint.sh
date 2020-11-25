#!/bin/sh

java -jar /opt/agent.jar -jnlpUrl $JENKINS_ADDRESS/computer/$JENKINS_AGENT_NAME/slave-agent.jnlp -secret $JENKINS_SECRET -workDir "$JENKINS_HOME_DIR" &

dockerd-entrypoint.sh
