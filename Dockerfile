FROM registry:2.8.0

MAINTAINER jbaker@ccctechcenter.org

COPY custom-entrypoint.sh .
RUN ["chmod", "+x", "/custom-entrypoint.sh"]
RUN mkdir /auth

ENTRYPOINT ["./custom-entrypoint.sh", "/etc/docker/registry/config.yml"]
