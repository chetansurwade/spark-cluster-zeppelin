FROM chetansurwade/spark-master:latest

ENV APACHE_SPARK_VERSION 2.4.5
ENV APACHE_HADOOP_VERSION 2.7.0
ENV ZEPPELIN_VERSION 0.9.0-preview1

RUN set -x \
    && curl -fSL "http://archive.apache.org/dist/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-netinst.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C / \
    && mv /zeppelin-* /zeppelin \
    && rm /tmp/zeppelin.tgz

ENV SPARK_HOME /spark
ENV ZEPPELIN_ADDR 0.0.0.0 
ENV ZEPPELIN_INTERPRETER_DEP_MVNREPO https://repo1.maven.org/maven2/
COPY spark-defaults.conf /spark/conf/

WORKDIR /zeppelin

CMD ["/zeppelin/bin/zeppelin.sh"]
