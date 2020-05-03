FROM bde2020/spark-base:2.4.5-hadoop2.7

ENV APACHE_SPARK_VERSION 2.4.5
ENV APACHE_HADOOP_VERSION 2.7.0
ENV ZEPPELIN_VERSION 0.8.2

RUN set -x \
    && curl -fSL "http://archive.apache.org/dist/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-netinst.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C / \
    && mv /zeppelin-* /zeppelin \
    && rm /tmp/zeppelin.tgz

ENV SPARK_SUBMIT_OPTIONS "--jars /opt/zeppelin/sansa-examples-spark-2016-12.jar"
ENV SPARK_HOME /spark

WORKDIR /zeppelin

CMD ["/zeppelin/bin/zeppelin.sh"]
