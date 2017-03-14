# Note
According to the logstash documentation, it should be possible to to add an environment variable like so ${VAR} in a configuration file. 

But currently this does not seem to work, for the variables in 40-jdbc.conf.

As a work around, the start-override.sh script is added, and in that script we replace the variable tokens with the actual variable values.

# Setup
In docker-compose or .env file, you should have the following setup:

```elk:
    image: reload/elk
    ports:
      - "5601:5601"
      - "9200:9200"
      - "5044:5044"
    environment:
      JDBC_HARVEST_HOST: ${JDBC_HARVEST_HOST}
      JDBC_HARVEST_DATABASE: ${JDBC_HARVEST_DATABASE}
      JDBC_HARVEST_USER: ${JDBC_HARVEST_USER}
      JDBC_HARVEST_USER_PASSWORD: ${JDBC_HARVEST_USER_PASSWORD}
``
