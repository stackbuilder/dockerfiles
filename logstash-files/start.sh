docker run -d --name logstash-files -v /data/logs:/logs --link es:es logstash-files
