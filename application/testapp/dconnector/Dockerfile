#SHAMEFULLY STOLLEN FROM https://hub.docker.com/r/debezium/connect/dockerfile
FROM debezium/connect-base:0.10
ENV DEBEZIUM_VERSION=0.9.0.Final \
    MAVEN_REPO_CORE="https://repo1.maven.org/maven2" \
    MAVEN_REPO_INCUBATOR="https://repo1.maven.org/maven2" \
    MD5="f4366565ef7b3331e3e7a401d267b1c5"

#
# Download connectors, verify the contents, and then install into the `$KAFKA_CONNECT_PLUGINS_DIR/debezium` directory...
#
RUN curl -fSL -o /tmp/plugin.tar.gz $MAVEN_REPO_CORE/io/debezium/debezium-connector-postgres/$DEBEZIUM_VERSION/debezium-connector-postgres-$DEBEZIUM_VERSION-plugin.tar.gz &&\
    echo "${MD5}  /tmp/plugin.tar.gz" | md5sum -c - &&\
    tar -xzf /tmp/plugin.tar.gz -C $KAFKA_CONNECT_PLUGINS_DIR &&\
    rm -f /tmp/plugin.tar.gz
