# TODO change to exact version
FROM rancher/docker-dind-base:latest
ADD ./start.sh /
ENTRYPOINT ["/start.sh"]
