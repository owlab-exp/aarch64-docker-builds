FROM dockreg.owlab.com:5000/aarch64-oracle-jdk8

ENV ZOOKEEPER_VERSION 3.4.8

RUN wget -q -O - http://apache.mirrors.pair.com/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz | tar zxvf - -C /opt \
    && ln -s /opt/zookeeper-${ZOOKEEPER_VERSION} /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && sed -i 's/tmp/data/' /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /data/zookeeper

COPY start.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/start.sh

# For client
EXPOSE 2181
# For peer
EXPOSE 2888
# For leader election
EXPOSE 3888

WORKDIR /opt/zookeeper

VOLUME ["/data/zookeeper"]

CMD ["/usr/local/bin/start.sh"]
