FROM nikolaik/python-nodejs:python3.11-nodejs18-alpine

# install glibc compatibility for alpine
RUN apk add --no-cache \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
        awscli \
    && rm -rf /var/cache/apk/*

RUN apk --no-cache add jq groff bash docker-compose git findutils coreutils
