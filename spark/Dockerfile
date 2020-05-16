FROM bde2020/spark-base:2.4.5-hadoop2.7

LABEL maintainer="Chetan Surwade <chetan.surwade@outlook.com>"

COPY master.sh /
COPY spark-defaults.conf /spark/conf/

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

EXPOSE 8080 7077 6066 1000

CMD ["/bin/bash", "/master.sh"]