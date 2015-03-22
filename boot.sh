#/bin/bash

#First start the Elasticsearch
docker run -d --name es hfranzen/elasticsearch 

#start the kibana interface
docker run -d --name kibana --link es:es -p 5601 --name kibana hfranzen/kibana

#Start logstash interactive and link this container to ElasticSearch
docker run -i --name logstash --link es:es 

#Start a example docker container that sends collectd data to logstash
docker run -d --link logstash:logstash hfranzen/collectd
