FROM alpine:latest

WORKDIR /tidalab
RUN cd /tidalab \
    && wget https://github.com/mikucloud/tidalab/releases/latest/download/tidalab-trojan \
    && wget https://github.com/p4gefau1t/trojan-go/releases/latest/download/trojan-go-linux-amd64.zip \
    && unzip trojan-go-linux-amd64.zip \
    && rm -rf trojan-go-linux-amd64.zip \
    && chmod +x /tidalab/*

ENTRYPOINT /tidalab/tidalab-trojan -api="$API" -token="$TOKEN" -node="$NODE" -license="$LICENSE" -syncInterval="$SYNCINTERVAL"
