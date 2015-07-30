docker run -d --name logstash-files --privileged=true -v /data/logs:/logs --link es:es logstash-files
