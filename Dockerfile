FROM registry:2.6.2

MAINTAINER jbaker@ccctechcenter.org

ADD custom-entrypoint.sh .
RUN ["chmod", "+x", "/custom-entrypoint.sh"]

ENTRYPOINT ["/custom-entrypoint.sh"]
