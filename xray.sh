#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a7d47e8c-8704-46d1-b311-f3b87f8045e0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

