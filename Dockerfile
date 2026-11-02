# pinned version of the Alpine-tagged 'go' image
FROM golang:1.16-alpine@sha256:5616dca835fa90ef13a843824ba58394dad356b7d56198fb7c93cbe76d7d67fe

# install requirements
RUN apk add --update --no-cache bash ca-certificates curl jq

COPY entrypoint.sh /entrypoint.sh
# set the default entrypoint -- when this container is run, use this command
ENTRYPOINT ["/entrypoint.sh"]
