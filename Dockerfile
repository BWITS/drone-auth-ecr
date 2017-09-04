FROM docker:17.07.0-ce-dind

ADD amazon-ecr-credential-helper/bin/local/docker-credential-ecr-login /bin/docker-credential-ecr-login
ADD config.json /root/.docker/config.json
