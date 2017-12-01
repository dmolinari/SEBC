5_terasort.md



sudo -u hdfs time hadoop jar hadoop-mapreduce-examples.jar terasort 10000000 /user/saturn/tsort


[saturn@yakko hadoop-mapreduce]$ kinit -p saturn@DMOLINARI.HQ
Password for saturn@DMOLINARI.HQ: 
[saturn@yakko hadoop-mapreduce]$ time hadoop jar hadoop-mapreduce-examples.jar terasort 10000000 /user/saturn/tgen /user/saturn/tsort
17/12/01 19:55:15 INFO terasort.TeraSort: starting
17/12/01 19:55:16 INFO hdfs.DFSClient: Created token for saturn: HDFS_DELEGATION_TOKEN owner=saturn@DMOLINARI.HQ, renewer=yarn, realUser=, issueDate=1512158116878, maxDate=1512762916878, sequenceNumber=1, masterKeyId=2 on 10.0.3.7:8020
17/12/01 19:55:16 INFO security.TokenCache: Got dt for hdfs://skippy.southcentralus.cloudapp.azure.com:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.3.7:8020, Ident: (token for saturn: HDFS_DELEGATION_TOKEN owner=saturn@DMOLINARI.HQ, renewer=yarn, realUser=, issueDate=1512158116878, maxDate=1512762916878, sequenceNumber=1, masterKeyId=2)
17/12/01 19:55:16 ERROR terasort.TeraSort: Input path does not exist: hdfs://skippy.southcentralus.cloudapp.azure.com:8020/user/saturn/10000000

real	0m2.425s
user	0m3.838s
sys	0m0.328s


```
[saturn@yakko hadoop-mapreduce]$ hdfs dfs -ls /user/saturn/tgen
Found 3 items
-rw-r--r--   3 hdfs supergroup          0 2017-12-01 18:42 /user/saturn/tgen/_SUCCESS
-rw-r--r--   3 hdfs supergroup 3276800000 2017-12-01 18:42 /user/saturn/tgen/part-m-00000
-rw-r--r--   3 hdfs supergroup 3276800000 2017-12-01 18:42 /user/saturn/tgen/part-m-00001
```

```
[saturn@yakko hadoop-mapreduce]$ hadoop fsck -blocks /user/saturn
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://skippy.southcentralus.cloudapp.azure.com:50070/fsck?ugi=saturn&blocks=1&path=%2Fuser%2Fsaturn
FSCK started by saturn (auth:KERBEROS_SSL) from /10.0.3.4 for path /user/saturn at Fri Dec 01 19:57:32 UTC 2017
...Status: HEALTHY
 Total size:	6553600000 B
 Total dirs:	2
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	196 (avg. block size 33436734 B)
 Minimally replicated blocks:	196 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		3
 Number of racks:		1
FSCK ended at Fri Dec 01 19:57:32 UTC 2017 in 11 milliseconds


The filesystem under path '/user/saturn' is HEALTHY
```