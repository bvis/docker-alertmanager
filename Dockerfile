FROM prom/alertmanager:v0.4.2

ENV "ALERTMANAGER_BIN=/bin/alertmanager" \
    "SLACK_API=null" \
    "LOGSTASH_URL=http://logstash:8080/"

COPY rootfs /

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD        [ "-config.file=/etc/alertmanager/config.yml", \
             "-storage.path=/alertmanager" ]
