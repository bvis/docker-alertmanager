#!/bin/sh -e

cat /etc/alertmanager/config.yml | \
    sed "s@#api_url: 'null'#@api_url: '$SLACK_API'@g" |\
    sed "s@#logstash_url: 'null'#@url: '$LOGSTASH_URL'@g" > /tmp/config.yml

mv /tmp/config.yml /etc/alertmanager/config.yml

set -- $ALERTMANAGER_BIN "$@"

exec "$@"
