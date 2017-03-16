FROM plugins/docker
COPY ./authinit.sh /
#ENTRYPOINT ["/authinit.sh", "/bin/drone-docker"]
