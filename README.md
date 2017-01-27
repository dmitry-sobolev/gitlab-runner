# gitlab-runner
Docker image for Gitlab CI multi runner

# Usage
```
docker run --name runner \
 -v /var/lib/docker.sock:/var/lib/docker.sock:ro \
 -v /etc/docker-runner:/etc/docker-runner \
 propp/gitlab-runner
```
