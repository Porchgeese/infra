FROM ubuntu:latest
ARG KAFKA_VERSION=2.1.0
RUN apt-get update && \
    apt-get install -y  tar curl
RUN curl http://apache.mirror.anlx.net/kafka/$KAFKA_VERSION/kafka_2.11-$KAFKA_VERSION.tgz | tar -xz
RUN mv kafka_2.11-$KAFKA_VERSION kafka


FROM java:8-jre-alpine
COPY --from=0 kafka kafka
RUN apk add --no-cache bash
COPY server.properties /kafka/config/server.properties
CMD /kafka/bin/kafka-server-start.sh /kafka/config/server.properties