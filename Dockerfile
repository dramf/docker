FROM alpine:latest

ARG RUNNER

MAINTAINER dramf <dramf@mail.ru>

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN adduser -D -g '' dckr
USER dckr

ENV RUNNER_NAME=$RUNNER

ENTRYPOINT ["/entrypoint.sh"]
