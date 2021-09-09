FROM alpine

ENV HELM_VERSION="v3.6.3"

RUN apk add --update ca-certificates \
 && apk add -t deps \
 && wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz \
 && tar -xf helm-${HELM_VERSION}-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin \
 && apk del --purge deps \
 && rm /var/cache/apk/* \
 && rm -f /helm-${HELM_VERSION}-linux-amd64.tar.gz

ENTRYPOINT ["helm"]

CMD ["help"]
