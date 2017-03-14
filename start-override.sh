#!/bin/bash

sed -i 's/\(${JDBC_HARVEST_HOST}\)/'$JDBC_HARVEST_HOST'/' /etc/logstash/conf.d/40-jdbc.conf > /dev/null
sed -i 's/\(${JDBC_HARVEST_DATABASE}\)/'$JDBC_HARVEST_DATABASE'/' /etc/logstash/conf.d/40-jdbc.conf > /dev/null
sed -i 's/\(${JDBC_HARVEST_USER}\)/'$JDBC_HARVEST_USER'/' /etc/logstash/conf.d/40-jdbc.conf > /dev/null
sed -i 's/\(${JDBC_HARVEST_USER_PASSWORD}\)/'$JDBC_HARVEST_USER_PASSWORD'/' /etc/logstash/conf.d/40-jdbc.conf > /dev/null

exec /usr/local/bin/start.sh
