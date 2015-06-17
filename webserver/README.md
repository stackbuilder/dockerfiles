# NGINX with Logstash 

This image will run a docker container for NGINX with logstash. 
Logstash will send the NGINX logfiles to ES.

to run the container  

docker run -t -i  --name webserver --link es:es -p 80:80 hfranzen/nginx-logstash

a running Elasticsearch container must exist by name es
