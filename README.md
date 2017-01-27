# gitlab-runner
Docker image for Gitlab CI multi runner

# Usage
```
docker run -d --name runner \
 -v /var/lib/docker.sock:/var/lib/docker.sock:ro \
 -v /etc/docker-runner:/etc/docker-runner \
 propp/gitlab-runner
```

## Add runner
```
docker exec -it runner gitlab-runner register -n -u $YOUR_GITLAB_CI_URL \
 -r $YOUR_GITLAB_CI_TOKEN \
 --name docker-general \
 --executor "docker" \
 --run-unragged \
 --tag-list docker,testing,registry,images \
 --docker-image alpine:3.5 \
 --docker-volumes "/var/run/docker.sock:/var/run/docker.sock:ro"
```
