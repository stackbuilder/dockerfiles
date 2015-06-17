# NGINX with Logstash 

This image will run a docker container for NGINX with logstash. 
Logstash will send the NGINX logfiles to ES.

to run the container  

docker run -i --link es:es hfranzen/logstash

a running Elasticsearch container must exist by name es
