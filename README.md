Clone of https://github.com/drone-plugins/drone-docker Image which supports private docker repositories.

Example Usage:

```yaml
    publish:
     image: plugins/docker
     tags: latest
     registry: exampleregistry.com:5000
     username: myuser
     password: mypassword
     email: me@company.com
     repo: extranet
     tags: latest
     environment:
       - DOCKER_LAUNCH_DEBUG=true
       - PRIVATE_REPO_PULL_USER="private-registry-user"
       - PRIVATE_REPO_PULL_PASSWORD="private-registry-password"
       - PRIVATE_REPO_PULL_ADDRESS="exampleregistry.com:5000"
```
