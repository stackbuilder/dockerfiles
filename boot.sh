#/bin/bash

#First start the Elasticsearch
docker run -d --name es elasticsearch 

#start the kibana interface
docker run -d --name kibana --link es:es -p 5601:5601 --name kibana hfranzen/kibana
#docker run -d --name kibana-3 -p 80:80  --link es:es hfranzen/kibana-3

#Start logstash interactive and link this container to ElasticSearch
docker run -d --name logstash --link es:es hfranzen/logstash
docker run -d --name logstash-files --privileged=true -v /data/logs:/logs --link es:es hfranzen/logstash-files

docker run -d --name collectd --link logstash:logstash hfranzen/collectd
