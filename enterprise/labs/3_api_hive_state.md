* Stoping

curl -X POST -u admin:admin http://siberiano:7180/api/v2/clusters/DMolinari/services/hive/commands/stop
```
{
  "id" : 1242,
  "name" : "Stop",
  "startTime" : "2017-12-01T01:24:14.674Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

* Consulting Status

curl -u admin:admin http://siberiano:7180/api/v2/commands/1242
```
{
  "id" : 1242,
  "name" : "Stop",
  "startTime" : "2017-12-01T01:24:14.674Z",
  "endTime" : "2017-12-01T01:24:14.674Z",
  "active" : false,
  "success" : true,
  "resultMessage" : "Successfully stopped service.",
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  },
  "children" : {
    "items" : [ {
      "id" : 1243,
      "name" : "Stop",
      "startTime" : "2017-12-01T01:24:14.674Z",
      "endTime" : "2017-12-01T01:24:14.674Z",
      "active" : false,
      "success" : true,
      "resultMessage" : "Successfully stopped process.",
      "serviceRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive"
      },
      "roleRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive",
        "roleName" : "hive-HIVESERVER2-60608719cd0be619f4bfc2117b35e225"
      }
    }, {
      "id" : 1244,
      "name" : "Stop",
      "startTime" : "2017-12-01T01:24:14.674Z",
      "endTime" : "2017-12-01T01:24:14.674Z",
      "active" : false,
      "success" : true,
      "resultMessage" : "Successfully stopped process.",
      "serviceRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive"
      },
      "roleRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive",
        "roleName" : "hive-HIVEMETASTORE-60608719cd0be619f4bfc2117b35e225"
      }
    } ]
  }
}
```
* Starting

curl -X POST -u admin:admin http://siberiano:7180/api/v2/clusters/DMolinari/services/hive/commands/start
```
{
  "id" : 1248,
  "name" : "Start",
  "startTime" : "2017-12-01T01:24:14.674Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```
* Consulting Status

curl -u admin:admin http://siberiano:7180/api/v2/commands/1248

```
{
  "id" : 1248,
  "name" : "Start",
  "startTime" : "2017-12-01T01:24:14.674Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  },
  "children" : {
    "items" : [ {
      "id" : 1250,
      "name" : "Start",
      "startTime" : "2017-12-01T01:24:14.674Z",
      "active" : true,
      "serviceRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive"
      },
      "roleRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive",
        "roleName" : "hive-HIVEMETASTORE-60608719cd0be619f4bfc2117b35e225"
      }
    }, {
      "id" : 1249,
      "name" : "Start",
      "startTime" : "2017-12-01T01:24:14.674Z",
      "active" : true,
      "serviceRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive"
      },
      "roleRef" : {
        "clusterName" : "cluster",
        "serviceName" : "hive",
        "roleName" : "hive-HIVESERVER2-60608719cd0be619f4bfc2117b35e225"
      }
    } ]
  }
}
```



