# jenkins slave dind

Docker image with openjdk 11 and docker 19.03 installed for dind jenkins node functionality.

```bash
docker container run -d -e JENKINS_ADDRESS=http://[Jenkins instance address and port] -e JENKINS_AGENT_NAME=[agent created name] -e JENKINS_SECRET=[secret from agent configuration]  -e JENKINS_HOME_DIR=[home directory path] --name dind_agent --privileged beneventsur/jenkins_slave_dind:latest
```
