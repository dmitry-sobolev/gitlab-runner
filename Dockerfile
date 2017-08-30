FROM gitlab/gitlab-runner:9.4

ENV CONFIG_FILE=/etc/gitlab-runner/config.toml \
    RUNNER_USER=gitlab-runner \
    RUNNER_WORKING_DIR=/home/gitlab-runner \
    RUNNER_CONCURRENCY=4

COPY entrypoint.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]
