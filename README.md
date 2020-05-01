# spark-cluster-zeppelin
Working Spark Cluster with Zeppelin UI

Required tools:
```
docker
docker-compose
make
```

Build zeppelin
```
docker build -f ./zeppelin/ -t bde2020/zeppelin:0.7.2
```

To Spin Up Spark cluster with Zeppelin notebook:
```
make up
```

To Tear down Spark cluster with Zeppelin notebook:
```
make down
```
