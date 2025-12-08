#!/bin/bash
CONFIG_PATH=/data/options.json
VLESS_URL=$(jq -r '.vless_url' $CONFIG_PATH)

mkdir -p /etc/xray

cat <<EOF >/etc/xray/config.json
{
  "inbounds": [
    {
      "port": 1080,
      "listen": "0.0.0.0",
      "protocol": "socks",
      "settings": { "udp": true }
    }
  ],
  "outbounds": [
    {
      "protocol": "vless",
      "settings": {
        "vnext": [
          {
            "address": "",
            "port": 443,
            "users": [
              {
                "id": "",
                "encryption": "none"
              }
            ]
          }
        ]
      },
      "streamSettings": {
        "network": "tcp",
        "security": "reality",
        "realitySettings": {
          "serverName": "",
          "publicKey": "",
          "shortId": ""
        }
      }
    }
  ]
}
EOF

/usr/bin/xray -c /etc/xray/config.json
