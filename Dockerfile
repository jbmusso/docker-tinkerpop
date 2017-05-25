FROM openjdk:8u131-jre


ENV GREMLIN_SERVER_VERSION 3.2.4
ENV GREMLIN_SERVER_ZIP_URL https://www.apache.org/dyn/closer.cgi?action=download&filename=tinkerpop/$GREMLIN_SERVER_VERSION/apache-tinkerpop-gremlin-server-$GREMLIN_SERVER_VERSION-bin.zip

RUN cd /opt && \
    wget -O gremlin-server.zip "$GREMLIN_SERVER_ZIP_URL" && \
    unzip gremlin-server.zip && \
    ln -s apache-tinkerpop-gremlin-server-$GREMLIN_SERVER_VERSION gremlin-server && \
    rm gremlin-server.zip

WORKDIR /opt/gremlin-server

EXPOSE 8182

ENTRYPOINT ["bin/gremlin-server.sh"]
