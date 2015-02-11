FROM rancher/dind:v0.1.0
ADD ./start.sh /
ENTRYPOINT ["/start.sh"]
