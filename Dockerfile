FROM docker.elastic.co/logstash/logstash:8.9.2
RUN bin/logstash-plugin install logstash-filter-tld
COPY ./conf.d /usr/share/logstash/pipeline/
COPY ./pipelines.yml /usr/share/logstash/config/