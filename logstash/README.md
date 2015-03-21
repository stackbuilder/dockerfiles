This image will run a docker container for logstash.
to run the container  

docker run -i --link es:es hfranzen/logstash

a running Elasticsearch container must exist by name es
