#3_cm.md

Create user directories in HDFS for saturn and haley

```
[dmolinari@yakko opt]$ sudo -u hdfs hadoop fs -mkdir /user/saturn
[dmolinari@yakko opt]$ sudo -u hdfs hadoop fs -mkdir /user/haley
[dmolinari@yakko opt]$ sudo -u hdfs hadoop fs -ls /user
Found 7 items
drwxr-xr-x   - hdfs   supergroup          0 2017-12-01 17:42 /user/haley
drwxrwxrwx   - mapred hadoop              0 2017-12-01 17:33 /user/history
drwxrwxr-t   - hive   hive                0 2017-12-01 17:34 /user/hive
drwxrwxr-x   - hue    hue                 0 2017-12-01 17:35 /user/hue
drwxrwxr-x   - oozie  oozie               0 2017-12-01 17:35 /user/oozie
drwxr-xr-x   - hdfs   supergroup          0 2017-12-01 17:42 /user/saturn
drwxr-x--x   - spark  spark               0 2017-12-01 17:33 /user/spark
```

-----

```
[dmolinari@yakko opt]$ curl -u admin:admin 'http://23.98.218.170:7180/api/v1/hosts'
{
  "items" : [ {
    "hostId" : "dab5efc3-3950-4870-91ba-cc1f24f8c1c8",
    "ipAddress" : "10.0.3.6",
    "hostname" : "dotsebc.southcentralus.cloudapp.azure.com",
    "rackId" : "/default",
    "hostUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/hostRedirect/dab5efc3-3950-4870-91ba-cc1f24f8c1c8"
  }, {
    "hostId" : "35809e75-d62d-4358-bf62-80f84c13848f",
    "ipAddress" : "10.0.3.7",
    "hostname" : "skippy.southcentralus.cloudapp.azure.com",
    "rackId" : "/default",
    "hostUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/hostRedirect/35809e75-d62d-4358-bf62-80f84c13848f"
  }, {
    "hostId" : "1040d693-fcf7-4980-9c09-7958ea07d52b",
    "ipAddress" : "10.0.3.5",
    "hostname" : "wakko.southcentralus.cloudapp.azure.com",
    "rackId" : "/default",
    "hostUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/hostRedirect/1040d693-fcf7-4980-9c09-7958ea07d52b"
  }, {
    "hostId" : "c718c294-3d75-46d9-b97e-e7b6bdba6c58",
    "ipAddress" : "10.0.3.4",
    "hostname" : "yakko.southcentralus.cloudapp.azure.com",
    "rackId" : "/default",
    "hostUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/hostRedirect/c718c294-3d75-46d9-b97e-e7b6bdba6c58"
  } ]
  ```



curl -u admin:admin 'http://23.98.218.170:7180/api/v1/clusters'

```
[dmolinari@yakko opt]$ curl -u admin:admin 'http://23.98.218.170:7180/api/v1/clusters'
{
  "items" : [ {
    "name" : "DMolinari",
    "version" : "CDH5"
  } ]
  ```


curl -u admin:admin 'http://23.98.218.170:7180/api/v8/clusters/dmolinari/services'

```
[dmolinari@yakko opt]$ curl -u admin:admin 'http://23.98.218.170:7180/api/v8/clusters/dmolinari/services'
{
  "items" : [ {
    "name" : "zookeeper",
    "type" : "ZOOKEEPER",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/serviceRedirect/zookeeper",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "ZOOKEEPER_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "ZOOKEEPER_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "ZooKeeper"
  }, {
    "name" : "oozie",
    "type" : "OOZIE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/serviceRedirect/oozie",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "OOZIE_OOZIE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Oozie"
  }, {
    "name" : "hue",
    "type" : "HUE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/serviceRedirect/hue",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HUE_HUE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hue"
  }, {
    "name" : "spark_on_yarn",
    "type" : "SPARK_ON_YARN",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/serviceRedirect/spark_on_yarn",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Spark"
  }, {
    "name" : "hdfs",
    "type" : "HDFS",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/serviceRedirect/hdfs",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HDFS_BLOCKS_WITH_CORRUPT_REPLICAS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_DATA_NODES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_FREE_SPACE_REMAINING",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_HA_NAMENODE_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_MISSING_BLOCKS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_UNDER_REPLICATED_BLOCKS",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "HDFS"
  }, {
    "name" : "yarn",
    "type" : "YARN",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/serviceRedirect/yarn",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "YARN_JOBHISTORY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_NODE_MANAGERS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_RESOURCEMANAGERS_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_USAGE_AGGREGATION_HEALTH",
      "summary" : "DISABLED"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "YARN (MR2 Included)"
  }, {
    "name" : "hive",
    "type" : "HIVE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://yakko.southcentralus.cloudapp.azure.com:7180/cmf/serviceRedirect/hive",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HIVE_HIVEMETASTORES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HIVE_HIVESERVER2S_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hive"
  } ]
} 
```




