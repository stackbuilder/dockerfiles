#/bin/bash

#First start the Elasticsearch
docker run -d --name es elasticsearch 

#start the kibana interface
docker run -d --name kibana --link es:es -p 5601:5601 --name kibana hfranzen/kibana

#Start logstash interactive and link this container to ElasticSearch
docker run -i --name logstash --link es:es hfranzen/logstash

#Start a example docker container that sends collectd data to logstash, thanks to yaronr:
docker run --name=collectd -v /proc:/proc:ro -e HOSTNAME=collectd --rm --link logstash:logstash yaronr/collectd
