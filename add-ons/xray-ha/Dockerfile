
FROM alpine:3.18

RUN apk add --no-cache bash curl wget

# Install Xray
RUN wget -O /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip &&     unzip /tmp/xray.zip -d /usr/bin && chmod +x /usr/bin/xray

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
