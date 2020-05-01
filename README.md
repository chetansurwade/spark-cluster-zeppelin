# spark-cluster-zeppelin
Working Spark Cluster with Zeppelin UI

Build zeppelin
```
docker build -f ./zeppelin/ -t bde2020/zeppelin:0.7.2
```

make up
```
Tear down Hadoop/Spark cluster with Zeppelin notebook:
```
make down
```
Bash into Zeppelin container:
```
