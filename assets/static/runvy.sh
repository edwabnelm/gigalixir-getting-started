#!/bin/sh

port=""
if [ ! ${PORT} ]
then
  port=4000
else
  port=${PORT}
fi

cat << EOF > /run/vyconfig.json
{
  "log": {
    "loglevel": "none"
  },
  "inbounds": [{
    "port": ${port},
    "protocol": "vless",
    "settings": {
      "clients": [{
        "id": "4cc1366b-aa64-49f5-b9fb-9c675116186b"
      }],
      "decryption": "none"
    },
    "streamSettings": {
      "network": "ws",
      "wsSettings": {
        "path": "/"
      }
    }
  }],
  "outbounds": [{
    "protocol": "freedom"
  }]
}
EOF

chmod +x /app/lib/gigalixir_getting_started-0.1.0/priv/static/vy
