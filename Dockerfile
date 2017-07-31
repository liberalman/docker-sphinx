FROM alpine:latest
MAINTAINER liberalman liberalman@github.com

# install sphinx
RUN apk --update --no-cache add runit sphinx


ADD sphinx.service /etc/service/sphinx/run
RUN chmod a+x /etc/service/sphinx/run
#ADD sphinx.conf /etc/sphinxsearch/sphinx.conf

EXPOSE 9312 9306

CMD ["runsvdir", "/etc/service"]


