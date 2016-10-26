# basi/alertmanager

It has 2 different receivers configured: logstash and slack.

## How to run it

You need to provide a valid slack api key and logstash endpoint.
Both can be passed to the container as an environmental variable. For example:

    docker run \
      -e "SLACK_API=https://hooks.slack.com/services/MY/API/KEY" \
      -e "LOGSTASH_URL=http://logstash:8080/" \
      basi/alertmanager
      
      
