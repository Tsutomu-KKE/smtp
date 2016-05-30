#FROM debian:jessie
FROM tsutomu7/ubuntu-essential

ADD bin.tgz /bin/
RUN apt-get update && \
    apt-get install -y exim4-daemon-light && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    find /var/log -type f | while read f; do echo -ne '' > $f; done;
CMD ["/bin/entrypoint.sh", "exim", "-bd", "-q15m", "-v"]
