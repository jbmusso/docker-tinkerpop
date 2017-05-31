FROM openjdk:8u131-jre

LABEL maintainer "jbmusso@gmail.com"


ENV GREMLIN_CONSOLE_VERSION 3.2.4
ENV GREMLIN_CONSOLE_ZIP_URL https://www.apache.org/dyn/closer.cgi?action=download&filename=tinkerpop/$GREMLIN_CONSOLE_VERSION/apache-tinkerpop-gremlin-console-$GREMLIN_CONSOLE_VERSION-bin.zip

RUN cd /opt && \
    wget -O gremlin-console.zip "$GREMLIN_CONSOLE_ZIP_URL" && \
    unzip gremlin-console.zip && \
    ln -s apache-tinkerpop-gremlin-console-$GREMLIN_CONSOLE_VERSION gremlin-console && \
    rm gremlin-console.zip

WORKDIR /opt/gremlin-console

ENTRYPOINT ["bin/gremlin.sh"]

CMD ["bin/gremlin.sh"]

