FROM plugins/docker
COPY ./authinit.sh /
CMD chmod 777 ./authinit.sh
ENTRYPOINT ["/./authinit.sh", "/bin/drone-docker"]
