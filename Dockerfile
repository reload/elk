FROM sebp/elk
WORKDIR ${LOGSTASH_HOME}

# Install MySQL dependencies
RUN curl -L -o mysql-connector-java-5.1.36-bin.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.36/mysql-connector-java-5.1.36.jar

COPY ./harvester-statement /opt/logstash/harvester-statement
COPY ./40-jdbc.conf /etc/logstash/conf.d/

COPY ./start-override.sh /usr/local/bin/start-override.sh
RUN chmod +x /usr/local/bin/start-override.sh

CMD [ "/usr/local/bin/start-override.sh" ]

