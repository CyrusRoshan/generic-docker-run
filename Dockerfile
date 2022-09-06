FROM docker:20

RUN apk add bash
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]